
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int zio_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int longlong_t ;
struct TYPE_18__ {int dn_datablkshift; scalar_t__ dn_datablksz; int dn_struct_rwlock; int dn_zfetch; TYPE_2__* dn_objset; scalar_t__ dn_object; } ;
typedef TYPE_4__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_19__ {scalar_t__ db_state; int db_mtx; int db_changed; int db; } ;
typedef TYPE_5__ dmu_buf_impl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_17__ {int ru_oublock; } ;
struct TYPE_16__ {int os_spa; TYPE_1__* os_dsl_dataset; } ;
struct TYPE_15__ {scalar_t__ ds_object; } ;
struct TYPE_14__ {TYPE_3__ td_ru; } ;


 int ASSERT (int) ;
 scalar_t__ DB_FILL ;
 scalar_t__ DB_READ ;
 int DB_RF_CANFAIL ;
 int DB_RF_HAVESTRUCT ;
 int DB_RF_NEVERWAIT ;
 int DB_RF_NOPREFETCH ;
 scalar_t__ DB_UNCACHED ;
 scalar_t__ DMU_MAX_ACCESS ;
 int DMU_READ_NO_PREFETCH ;
 scalar_t__ DNODE_IS_CACHEABLE (TYPE_4__*) ;
 scalar_t__ DNODE_META_IS_CACHEABLE (TYPE_4__*) ;
 int EIO ;
 int KM_SLEEP ;
 int P2ALIGN (scalar_t__,unsigned long long) ;
 int P2ROUNDUP (scalar_t__,unsigned long long) ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int RACCT_WRITEBPS ;
 int RACCT_WRITEIOPS ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int ZIO_FLAG_CANFAIL ;
 int curproc ;
 TYPE_11__* curthread ;
 int cv_wait (int *,int *) ;
 TYPE_5__* dbuf_hold (TYPE_4__*,scalar_t__,void*) ;
 int dbuf_read (TYPE_5__*,int *,int) ;
 scalar_t__ dbuf_whichblock (TYPE_4__*,int ,scalar_t__) ;
 int dmu_buf_rele_array (int **,scalar_t__,void*) ;
 int dmu_zfetch (int *,scalar_t__,scalar_t__,int) ;
 int ** kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int racct_add_force (int ,int ,scalar_t__) ;
 scalar_t__ racct_enable ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zfetch_array_rd_sz ;
 int zfs_panic_recover (char*,int ,int ,scalar_t__,int ,int ) ;
 int zio_nowait (int *) ;
 int * zio_root (int ,int *,int *,int ) ;
 int zio_wait (int *) ;

int
dmu_buf_hold_array_by_dnode(dnode_t *dn, uint64_t offset, uint64_t length,
    boolean_t read, void *tag, int *numbufsp, dmu_buf_t ***dbpp, uint32_t flags)
{
 dmu_buf_t **dbp;
 uint64_t blkid, nblks, i;
 uint32_t dbuf_flags;
 int err;
 zio_t *zio;

 ASSERT(length <= DMU_MAX_ACCESS);






 dbuf_flags = DB_RF_CANFAIL | DB_RF_NEVERWAIT | DB_RF_HAVESTRUCT |
     DB_RF_NOPREFETCH;

 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 if (dn->dn_datablkshift) {
  int blkshift = dn->dn_datablkshift;
  nblks = (P2ROUNDUP(offset + length, 1ULL << blkshift) -
      P2ALIGN(offset, 1ULL << blkshift)) >> blkshift;
 } else {
  if (offset + length > dn->dn_datablksz) {
   zfs_panic_recover("zfs: accessing past end of object "
       "%llx/%llx (size=%u access=%llu+%llu)",
       (longlong_t)dn->dn_objset->
       os_dsl_dataset->ds_object,
       (longlong_t)dn->dn_object, dn->dn_datablksz,
       (longlong_t)offset, (longlong_t)length);
   rw_exit(&dn->dn_struct_rwlock);
   return (SET_ERROR(EIO));
  }
  nblks = 1;
 }
 dbp = kmem_zalloc(sizeof (dmu_buf_t *) * nblks, KM_SLEEP);
 zio = zio_root(dn->dn_objset->os_spa, ((void*)0), ((void*)0), ZIO_FLAG_CANFAIL);
 blkid = dbuf_whichblock(dn, 0, offset);
 for (i = 0; i < nblks; i++) {
  dmu_buf_impl_t *db = dbuf_hold(dn, blkid + i, tag);
  if (db == ((void*)0)) {
   rw_exit(&dn->dn_struct_rwlock);
   dmu_buf_rele_array(dbp, nblks, tag);
   zio_nowait(zio);
   return (SET_ERROR(EIO));
  }


  if (read)
   (void) dbuf_read(db, zio, dbuf_flags);




  dbp[i] = &db->db;
 }

 if ((flags & DMU_READ_NO_PREFETCH) == 0 &&
     DNODE_META_IS_CACHEABLE(dn) && length <= zfetch_array_rd_sz) {
  dmu_zfetch(&dn->dn_zfetch, blkid, nblks,
      read && DNODE_IS_CACHEABLE(dn));
 }
 rw_exit(&dn->dn_struct_rwlock);


 err = zio_wait(zio);
 if (err) {
  dmu_buf_rele_array(dbp, nblks, tag);
  return (err);
 }


 if (read) {
  for (i = 0; i < nblks; i++) {
   dmu_buf_impl_t *db = (dmu_buf_impl_t *)dbp[i];
   mutex_enter(&db->db_mtx);
   while (db->db_state == DB_READ ||
       db->db_state == DB_FILL)
    cv_wait(&db->db_changed, &db->db_mtx);
   if (db->db_state == DB_UNCACHED)
    err = SET_ERROR(EIO);
   mutex_exit(&db->db_mtx);
   if (err) {
    dmu_buf_rele_array(dbp, nblks, tag);
    return (err);
   }
  }
 }

 *numbufsp = nblks;
 *dbpp = dbp;
 return (0);
}
