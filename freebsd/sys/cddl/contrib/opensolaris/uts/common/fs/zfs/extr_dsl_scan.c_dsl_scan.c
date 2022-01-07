
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int spa_scrub_reopen; int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef scalar_t__ pool_scan_func_t ;
struct TYPE_11__ {int scn_dp; } ;
typedef TYPE_2__ dsl_scan_t ;
struct TYPE_12__ {TYPE_2__* dp_scan; TYPE_1__* dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ECANCELED ;
 int ESC_ZFS_SCRUB_RESUME ;
 scalar_t__ POOL_SCAN_SCRUB ;
 int POOL_SCRUB_NORMAL ;
 int SCL_NONE ;
 int SET_ERROR (int) ;
 int ZFS_SPACE_CHECK_EXTRA_RESERVED ;
 scalar_t__ dsl_scan_is_paused_scrub (TYPE_2__*) ;
 int dsl_scan_setup_check ;
 int dsl_scan_setup_sync ;
 int dsl_scrub_set_pause_resume (int ,int ) ;
 int dsl_sync_task (int ,int ,int ,scalar_t__*,int ,int ) ;
 int spa_event_notify (TYPE_1__*,int *,int *,int ) ;
 int spa_name (TYPE_1__*) ;
 int spa_vdev_state_enter (TYPE_1__*,int ) ;
 int spa_vdev_state_exit (TYPE_1__*,int *,int ) ;
 int vdev_reopen (int ) ;

int
dsl_scan(dsl_pool_t *dp, pool_scan_func_t func)
{
 spa_t *spa = dp->dp_spa;
 dsl_scan_t *scn = dp->dp_scan;
 spa_vdev_state_enter(spa, SCL_NONE);
 spa->spa_scrub_reopen = B_TRUE;
 vdev_reopen(spa->spa_root_vdev);
 spa->spa_scrub_reopen = B_FALSE;
 (void) spa_vdev_state_exit(spa, ((void*)0), 0);

 if (func == POOL_SCAN_SCRUB && dsl_scan_is_paused_scrub(scn)) {

  int err = dsl_scrub_set_pause_resume(scn->scn_dp,
      POOL_SCRUB_NORMAL);
  if (err == 0) {
   spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_SCRUB_RESUME);
   return (ECANCELED);
  }
  return (SET_ERROR(err));
 }

 return (dsl_sync_task(spa_name(spa), dsl_scan_setup_check,
     dsl_scan_setup_sync, &func, 0, ZFS_SPACE_CHECK_EXTRA_RESERVED));
}
