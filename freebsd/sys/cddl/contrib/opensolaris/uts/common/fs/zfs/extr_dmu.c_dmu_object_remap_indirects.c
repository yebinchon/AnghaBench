
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef int objset_t ;
struct TYPE_8__ {int dn_nlevels; unsigned long long dn_indblkshift; unsigned long long dn_datablkshift; int dn_object; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;


 int EINTR ;
 int FORREAL ;
 int FTAG ;
 int JUSTLOOKING ;
 int SET_ERROR (int ) ;
 unsigned long long SPA_BLKPTRSHIFT ;
 int TXG_WAIT ;
 int dmu_object_remap_one_indirect (int *,TYPE_1__*,unsigned long long,unsigned long long) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_bonus (int *,int ) ;
 int dnode_hold (int *,unsigned long long,int ,TYPE_1__**) ;
 scalar_t__ dnode_needs_remap (TYPE_1__*) ;
 scalar_t__ dnode_next_offset (TYPE_1__*,int ,unsigned long long*,int,int,int ) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int dnode_setdirty (TYPE_1__*,int *) ;
 scalar_t__ issig (int ) ;

int
dmu_object_remap_indirects(objset_t *os, uint64_t object,
    uint64_t last_removal_txg)
{
 uint64_t offset, l1span;
 int err;
 dnode_t *dn;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err != 0) {
  return (err);
 }

 if (dn->dn_nlevels <= 1) {
  if (issig(JUSTLOOKING) && issig(FORREAL)) {
   err = SET_ERROR(EINTR);
  }






  if (err == 0 && dnode_needs_remap(dn)) {
   dmu_tx_t *tx = dmu_tx_create(os);
   dmu_tx_hold_bonus(tx, dn->dn_object);
   if ((err = dmu_tx_assign(tx, TXG_WAIT)) == 0) {
    dnode_setdirty(dn, tx);
    dmu_tx_commit(tx);
   } else {
    dmu_tx_abort(tx);
   }
  }

  dnode_rele(dn, FTAG);
  return (err);
 }

 offset = 0;
 l1span = 1ULL << (dn->dn_indblkshift - SPA_BLKPTRSHIFT +
     dn->dn_datablkshift);



 while (dnode_next_offset(dn, 0, &offset, 2, 1, 0) == 0) {
  if (issig(JUSTLOOKING) && issig(FORREAL)) {
   err = SET_ERROR(EINTR);
   break;
  }
  if ((err = dmu_object_remap_one_indirect(os, dn,
      last_removal_txg, offset)) != 0) {
   break;
  }
  offset += l1span;
 }

 dnode_rele(dn, FTAG);
 return (err);
}
