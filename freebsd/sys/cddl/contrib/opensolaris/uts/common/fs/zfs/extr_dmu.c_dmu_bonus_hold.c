
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_9__ {int dn_struct_rwlock; int dn_dbufs_count; TYPE_2__* dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_10__ {int db; int db_holds; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int DB_RF_MUST_SUCCEED ;
 int DB_RF_NOPREFETCH ;
 int FTAG ;
 int RW_READER ;
 int RW_WRITER ;
 int VERIFY (int) ;
 int atomic_inc_32 (int *) ;
 int dbuf_create_bonus (TYPE_1__*) ;
 scalar_t__ dbuf_read (TYPE_2__*,int *,int) ;
 int dnode_add_ref (TYPE_1__*,TYPE_2__*) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_refcount_add (int *,void*) ;

int
dmu_bonus_hold(objset_t *os, uint64_t object, void *tag, dmu_buf_t **dbp)
{
 dnode_t *dn;
 dmu_buf_impl_t *db;
 int error;

 error = dnode_hold(os, object, FTAG, &dn);
 if (error)
  return (error);

 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 if (dn->dn_bonus == ((void*)0)) {
  rw_exit(&dn->dn_struct_rwlock);
  rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
  if (dn->dn_bonus == ((void*)0))
   dbuf_create_bonus(dn);
 }
 db = dn->dn_bonus;


 if (zfs_refcount_add(&db->db_holds, tag) == 1) {
  VERIFY(dnode_add_ref(dn, db));
  atomic_inc_32(&dn->dn_dbufs_count);
 }






 rw_exit(&dn->dn_struct_rwlock);

 dnode_rele(dn, FTAG);

 VERIFY(0 == dbuf_read(db, ((void*)0), DB_RF_MUST_SUCCEED | DB_RF_NOPREFETCH));

 *dbp = &db->db;
 return (0);
}
