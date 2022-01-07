
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {size_t* vdev_initialize_offset; scalar_t__ vdev_leaf_zap; size_t vdev_initialize_last_offset; scalar_t__ vdev_initialize_action_time; size_t vdev_initialize_state; TYPE_3__* vdev_spa; TYPE_2__* vdev_top; } ;
typedef TYPE_4__ vdev_t ;
typedef int val ;
typedef size_t uint64_t ;
typedef int objset_t ;
typedef int last_offset ;
typedef int initialize_state ;
struct TYPE_15__ {TYPE_1__* tx_pool; } ;
typedef TYPE_5__ dmu_tx_t ;
struct TYPE_13__ {int * spa_meta_objset; } ;
struct TYPE_12__ {scalar_t__ vdev_removing; } ;
struct TYPE_11__ {int dp_spa; } ;


 int B_FALSE ;
 size_t TXG_MASK ;
 int VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME ;
 int VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET ;
 int VDEV_LEAF_ZAP_INITIALIZE_STATE ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 size_t dmu_tx_get_txg (TYPE_5__*) ;
 int kmem_free (void*,int) ;
 TYPE_4__* spa_lookup_by_guid (int ,size_t,int ) ;
 int vdev_is_concrete (TYPE_4__*) ;
 int zap_update (int *,scalar_t__,int ,int,int,size_t*,TYPE_5__*) ;

__attribute__((used)) static void
vdev_initialize_zap_update_sync(void *arg, dmu_tx_t *tx)
{
 uint64_t guid = *(uint64_t *)arg;
 uint64_t txg = dmu_tx_get_txg(tx);
 kmem_free(arg, sizeof (uint64_t));

 vdev_t *vd = spa_lookup_by_guid(tx->tx_pool->dp_spa, guid, B_FALSE);
 if (vd == ((void*)0) || vd->vdev_top->vdev_removing || !vdev_is_concrete(vd))
  return;

 uint64_t last_offset = vd->vdev_initialize_offset[txg & TXG_MASK];
 vd->vdev_initialize_offset[txg & TXG_MASK] = 0;

 VERIFY(vd->vdev_leaf_zap != 0);

 objset_t *mos = vd->vdev_spa->spa_meta_objset;

 if (last_offset > 0) {
  vd->vdev_initialize_last_offset = last_offset;
  VERIFY0(zap_update(mos, vd->vdev_leaf_zap,
      VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET,
      sizeof (last_offset), 1, &last_offset, tx));
 }
 if (vd->vdev_initialize_action_time > 0) {
  uint64_t val = (uint64_t)vd->vdev_initialize_action_time;
  VERIFY0(zap_update(mos, vd->vdev_leaf_zap,
      VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME, sizeof (val),
      1, &val, tx));
 }

 uint64_t initialize_state = vd->vdev_initialize_state;
 VERIFY0(zap_update(mos, vd->vdev_leaf_zap,
     VDEV_LEAF_ZAP_INITIALIZE_STATE, sizeof (initialize_state), 1,
     &initialize_state, tx));
}
