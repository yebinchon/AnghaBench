
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {TYPE_3__* zl_header; TYPE_2__* zl_spa; } ;
typedef TYPE_4__ zilog_t ;
struct TYPE_26__ {scalar_t__ zh_claim_txg; } ;
typedef TYPE_5__ zil_header_t ;
struct TYPE_27__ {scalar_t__ vdev_islog; } ;
typedef TYPE_6__ vdev_t ;
struct TYPE_28__ {int os_spa; } ;
typedef TYPE_7__ objset_t ;
typedef int dsl_pool_t ;
struct TYPE_29__ {scalar_t__ ds_object; } ;
typedef TYPE_8__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_30__ {int * blk_dva; } ;
typedef TYPE_9__ blkptr_t ;
struct TYPE_24__ {scalar_t__ zh_claim_txg; int zh_log; } ;
struct TYPE_22__ {scalar_t__ ub_checkpoint_txg; } ;
struct TYPE_23__ {TYPE_1__ spa_uberblock; } ;


 int ASSERT (int ) ;
 int BP_IS_HOLE (TYPE_9__*) ;
 int B_TRUE ;
 int CE_WARN ;
 int DVA_GET_VDEV (int *) ;
 int ECKSUM ;
 int ENOENT ;
 int FTAG ;
 int RW_READER ;
 int SCL_STATE ;
 int cmn_err (int ,char*,unsigned long long,int) ;
 int dmu_objset_from_ds (TYPE_8__*,TYPE_7__**) ;
 TYPE_4__* dmu_objset_zil (TYPE_7__*) ;
 int spa_config_enter (int ,int ,int ,int ) ;
 int spa_config_exit (int ,int ,int ) ;
 unsigned long long spa_min_claim_txg (int ) ;
 scalar_t__ vdev_is_dead (TYPE_6__*) ;
 int vdev_log_state_valid (TYPE_6__*) ;
 TYPE_6__* vdev_lookup_top (int ,int ) ;
 int zil_claim_log_block ;
 int zil_claim_log_record ;
 TYPE_5__* zil_header_in_syncing_context (TYPE_4__*) ;
 int zil_parse (TYPE_4__*,int ,int ,void*,unsigned long long) ;

int
zil_check_log_chain(dsl_pool_t *dp, dsl_dataset_t *ds, void *tx)
{
 zilog_t *zilog;
 objset_t *os;
 blkptr_t *bp;
 int error;

 ASSERT(tx == ((void*)0));

 error = dmu_objset_from_ds(ds, &os);
 if (error != 0) {
  cmn_err(CE_WARN, "can't open objset %llu, error %d",
      (unsigned long long)ds->ds_object, error);
  return (0);
 }

 zilog = dmu_objset_zil(os);
 bp = (blkptr_t *)&zilog->zl_header->zh_log;

 if (!BP_IS_HOLE(bp)) {
  vdev_t *vd;
  boolean_t valid = B_TRUE;
  spa_config_enter(os->os_spa, SCL_STATE, FTAG, RW_READER);
  vd = vdev_lookup_top(os->os_spa, DVA_GET_VDEV(&bp->blk_dva[0]));
  if (vd->vdev_islog && vdev_is_dead(vd))
   valid = vdev_log_state_valid(vd);
  spa_config_exit(os->os_spa, SCL_STATE, FTAG);

  if (!valid)
   return (0);
  zil_header_t *zh = zil_header_in_syncing_context(zilog);
  if (zilog->zl_spa->spa_uberblock.ub_checkpoint_txg != 0 &&
      zh->zh_claim_txg == 0)
   return (0);
 }
 error = zil_parse(zilog, zil_claim_log_block, zil_claim_log_record, tx,
     zilog->zl_header->zh_claim_txg ? -1ULL :
     spa_min_claim_txg(os->os_spa));

 return ((error == ECKSUM || error == ENOENT) ? 0 : error);
}
