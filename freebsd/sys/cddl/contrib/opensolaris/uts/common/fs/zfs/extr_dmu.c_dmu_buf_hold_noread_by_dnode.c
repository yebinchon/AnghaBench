
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_8__ {int db; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int EIO ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 TYPE_2__* dbuf_hold (TYPE_1__*,int ,void*) ;
 int dbuf_whichblock (TYPE_1__*,int ,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_buf_hold_noread_by_dnode(dnode_t *dn, uint64_t offset,
    void *tag, dmu_buf_t **dbp)
{
 uint64_t blkid;
 dmu_buf_impl_t *db;

 blkid = dbuf_whichblock(dn, 0, offset);
 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 db = dbuf_hold(dn, blkid, tag);
 rw_exit(&dn->dn_struct_rwlock);

 if (db == ((void*)0)) {
  *dbp = ((void*)0);
  return (SET_ERROR(EIO));
 }

 *dbp = &db->db;
 return (0);
}
