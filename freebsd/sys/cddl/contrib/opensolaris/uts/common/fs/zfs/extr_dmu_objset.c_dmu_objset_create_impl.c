
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_17__ {TYPE_1__* os_phys; int os_flags; } ;
typedef TYPE_2__ objset_t ;
typedef int dsl_dataset_t ;
struct TYPE_18__ {scalar_t__ dn_datablkshift; int dn_indblkshift; int* dn_next_nlevels; int dn_nlevels; scalar_t__ dn_nblkptr; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_19__ {size_t tx_txg; } ;
typedef TYPE_4__ dmu_tx_t ;
typedef scalar_t__ dmu_objset_type_t ;
typedef int blkptr_t ;
struct TYPE_16__ {int os_flags; scalar_t__ os_type; } ;


 int ASSERT (int) ;
 TYPE_3__* DMU_META_DNODE (TYPE_2__*) ;
 scalar_t__ DMU_OST_ANY ;
 scalar_t__ DMU_OST_NONE ;
 scalar_t__ DMU_OST_NUMTYPES ;
 int DMU_OT_DNODE ;
 int DMU_OT_NONE ;
 int DNODE_BLOCK_SIZE ;
 int DNODE_MIN_SLOTS ;
 scalar_t__ DNODE_SHIFT ;
 int DN_MAX_INDBLKSHIFT ;
 scalar_t__ DN_MAX_OBJECT ;
 int OBJSET_FLAG_USERACCOUNTING_COMPLETE ;
 int SPA_BLKPTRSHIFT ;
 size_t TXG_MASK ;
 int VERIFY0 (int ) ;
 int dmu_objset_from_ds (int *,TYPE_2__**) ;
 int dmu_objset_open_impl (int *,int *,int *,TYPE_2__**) ;
 scalar_t__ dmu_objset_userused_enabled (TYPE_2__*) ;
 int dmu_tx_is_syncing (TYPE_4__*) ;
 int dnode_allocate (TYPE_3__*,int ,int ,int ,int ,int ,int ,TYPE_4__*) ;
 int dsl_dataset_dirty (int *,TYPE_4__*) ;

objset_t *
dmu_objset_create_impl(spa_t *spa, dsl_dataset_t *ds, blkptr_t *bp,
    dmu_objset_type_t type, dmu_tx_t *tx)
{
 objset_t *os;
 dnode_t *mdn;

 ASSERT(dmu_tx_is_syncing(tx));

 if (ds != ((void*)0))
  VERIFY0(dmu_objset_from_ds(ds, &os));
 else
  VERIFY0(dmu_objset_open_impl(spa, ((void*)0), bp, &os));

 mdn = DMU_META_DNODE(os);

 dnode_allocate(mdn, DMU_OT_DNODE, DNODE_BLOCK_SIZE, DN_MAX_INDBLKSHIFT,
     DMU_OT_NONE, 0, DNODE_MIN_SLOTS, tx);
 if (ds != ((void*)0)) {
  int levels = 1;
  while ((uint64_t)mdn->dn_nblkptr <<
      (mdn->dn_datablkshift - DNODE_SHIFT +
      (levels - 1) * (mdn->dn_indblkshift - SPA_BLKPTRSHIFT)) <
      DN_MAX_OBJECT)
   levels++;

  mdn->dn_next_nlevels[tx->tx_txg & TXG_MASK] =
      mdn->dn_nlevels = levels;
 }

 ASSERT(type != DMU_OST_NONE);
 ASSERT(type != DMU_OST_ANY);
 ASSERT(type < DMU_OST_NUMTYPES);
 os->os_phys->os_type = type;
 if (dmu_objset_userused_enabled(os)) {
  os->os_phys->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
  os->os_flags = os->os_phys->os_flags;
 }

 dsl_dataset_dirty(ds, tx);

 return (os);
}
