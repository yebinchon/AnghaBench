
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {int spa_root_vdev; void* spa_scrub_active; void* spa_scrub_started; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_23__ {scalar_t__ scn_queue_obj; int scn_end_time; scalar_t__ scn_min_txg; int scn_max_txg; int scn_state; int scn_flags; } ;
struct TYPE_25__ {TYPE_1__ scn_phys; int * scn_taskq; void* scn_is_sorted; TYPE_4__* scn_dp; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_26__ {int dp_meta_objset; TYPE_2__* dp_spa; } ;
typedef TYPE_4__ dsl_pool_t ;
struct TYPE_27__ {int tx_txg; } ;
typedef TYPE_5__ dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int B_TRUE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DSF_SCRUB_PAUSED ;
 scalar_t__ DSL_SCAN_IS_SCRUB_RESILVER (TYPE_3__*) ;
 int DSS_CANCELED ;
 int DSS_FINISHED ;
 int ESC_ZFS_RESILVER_FINISH ;
 int ESC_ZFS_SCRUB_FINISH ;
 int SPA_ASYNC_RESILVER_DONE ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int VERIFY0 (int ) ;
 int dmu_object_free (int ,scalar_t__,TYPE_5__*) ;
 int dsl_scan_is_running (TYPE_3__*) ;
 scalar_t__ dsl_scan_restarting (TYPE_3__*,TYPE_5__*) ;
 int gethrestime_sec () ;
 int scan_ds_queue_clear (TYPE_3__*) ;
 int scan_io_queues_destroy (TYPE_3__*) ;
 int spa_async_request (TYPE_2__*,int ) ;
 int spa_errlog_rotate (TYPE_2__*) ;
 int spa_event_notify (TYPE_2__*,int *,int *,int ) ;
 int spa_feature_is_active (TYPE_2__*,int ) ;
 int spa_get_errlog_size (TYPE_2__*) ;
 int spa_history_log_internal (TYPE_2__*,char*,TYPE_5__*,char*,int ) ;
 int taskq_destroy (int *) ;
 int vdev_dtl_reassess (int ,int ,int ,int ) ;
 int zap_remove (int ,int ,char const*,TYPE_5__*) ;

__attribute__((used)) static void
dsl_scan_done(dsl_scan_t *scn, boolean_t complete, dmu_tx_t *tx)
{
 static const char *old_names[] = {
  "scrub_bookmark",
  "scrub_ddt_bookmark",
  "scrub_ddt_class_max",
  "scrub_queue",
  "scrub_min_txg",
  "scrub_max_txg",
  "scrub_func",
  "scrub_errors",
  ((void*)0)
 };

 dsl_pool_t *dp = scn->scn_dp;
 spa_t *spa = dp->dp_spa;
 int i;


 for (i = 0; old_names[i]; i++) {
  (void) zap_remove(dp->dp_meta_objset,
      DMU_POOL_DIRECTORY_OBJECT, old_names[i], tx);
 }

 if (scn->scn_phys.scn_queue_obj != 0) {
  VERIFY0(dmu_object_free(dp->dp_meta_objset,
      scn->scn_phys.scn_queue_obj, tx));
  scn->scn_phys.scn_queue_obj = 0;
 }
 scan_ds_queue_clear(scn);

 scn->scn_phys.scn_flags &= ~DSF_SCRUB_PAUSED;





 if (!dsl_scan_is_running(scn)) {
  ASSERT(!scn->scn_is_sorted);
  return;
 }

 if (scn->scn_is_sorted) {
  scan_io_queues_destroy(scn);
  scn->scn_is_sorted = B_FALSE;

  if (scn->scn_taskq != ((void*)0)) {
   taskq_destroy(scn->scn_taskq);
   scn->scn_taskq = ((void*)0);
  }
 }

 scn->scn_phys.scn_state = complete ? DSS_FINISHED : DSS_CANCELED;

 if (dsl_scan_restarting(scn, tx))
  spa_history_log_internal(spa, "scan aborted, restarting", tx,
      "errors=%llu", spa_get_errlog_size(spa));
 else if (!complete)
  spa_history_log_internal(spa, "scan cancelled", tx,
      "errors=%llu", spa_get_errlog_size(spa));
 else
  spa_history_log_internal(spa, "scan done", tx,
      "errors=%llu", spa_get_errlog_size(spa));

 if (DSL_SCAN_IS_SCRUB_RESILVER(scn)) {
  spa->spa_scrub_started = B_FALSE;
  spa->spa_scrub_active = B_FALSE;
  if (complete &&
      !spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
   vdev_dtl_reassess(spa->spa_root_vdev, tx->tx_txg,
       scn->scn_phys.scn_max_txg, B_TRUE);

   spa_event_notify(spa, ((void*)0), ((void*)0),
       scn->scn_phys.scn_min_txg ?
       ESC_ZFS_RESILVER_FINISH : ESC_ZFS_SCRUB_FINISH);
  } else {
   vdev_dtl_reassess(spa->spa_root_vdev, tx->tx_txg,
       0, B_TRUE);
  }
  spa_errlog_rotate(spa);





  spa_async_request(spa, SPA_ASYNC_RESILVER_DONE);
 }

 scn->scn_phys.scn_end_time = gethrestime_sec();

 ASSERT(!dsl_scan_is_running(scn));
}
