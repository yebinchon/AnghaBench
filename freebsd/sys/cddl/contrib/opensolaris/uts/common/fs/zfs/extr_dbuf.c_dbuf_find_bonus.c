
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_6__ {int dn_struct_rwlock; TYPE_2__* dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_7__ {int db_mtx; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int FTAG ;
 int RW_READER ;
 scalar_t__ dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int mutex_enter (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

__attribute__((used)) static dmu_buf_impl_t *
dbuf_find_bonus(objset_t *os, uint64_t object)
{
 dnode_t *dn;
 dmu_buf_impl_t *db = ((void*)0);

 if (dnode_hold(os, object, FTAG, &dn) == 0) {
  rw_enter(&dn->dn_struct_rwlock, RW_READER);
  if (dn->dn_bonus != ((void*)0)) {
   db = dn->dn_bonus;
   mutex_enter(&db->db_mtx);
  }
  rw_exit(&dn->dn_struct_rwlock);
  dnode_rele(dn, FTAG);
 }
 return (db);
}
