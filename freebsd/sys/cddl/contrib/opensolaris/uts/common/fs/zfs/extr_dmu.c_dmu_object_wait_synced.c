
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_4__ {int * dn_dirty_link; } ;
typedef TYPE_1__ dnode_t ;


 int FTAG ;
 int TXG_SIZE ;
 int dmu_objset_pool (int *) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 scalar_t__ list_link_active (int *) ;
 int txg_wait_synced (int ,int ) ;

int
dmu_object_wait_synced(objset_t *os, uint64_t object)
{
 dnode_t *dn;
 int error, i;

 error = dnode_hold(os, object, FTAG, &dn);
 if (error) {
  return (error);
 }

 for (i = 0; i < TXG_SIZE; i++) {
  if (list_link_active(&dn->dn_dirty_link[i])) {
   break;
  }
 }
 dnode_rele(dn, FTAG);
 if (i != TXG_SIZE) {
  txg_wait_synced(dmu_objset_pool(os), 0);
 }

 return (0);
}
