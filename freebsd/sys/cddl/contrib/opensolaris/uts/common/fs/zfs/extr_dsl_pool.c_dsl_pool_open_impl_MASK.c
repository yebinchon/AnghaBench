#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_5__ {void* dp_vnrele_taskq; int /*<<< orphan*/  dp_spaceavail_cv; int /*<<< orphan*/  dp_lock; void* dp_zil_clean_taskq; void* dp_sync_taskq; int /*<<< orphan*/  dp_early_sync_tasks; int /*<<< orphan*/  dp_sync_tasks; int /*<<< orphan*/  dp_dirty_dirs; int /*<<< orphan*/  dp_dirty_zilogs; int /*<<< orphan*/  dp_dirty_datasets; int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/  dp_meta_rootbp; int /*<<< orphan*/ * dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 int INT_MAX ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int TASKQ_PREPOPULATE ; 
 int TASKQ_THREADS_CPU_PCT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dd_dirty_link ; 
 int /*<<< orphan*/  ds_dirty_link ; 
 int /*<<< orphan*/  dsl_dataset_t ; 
 int /*<<< orphan*/  dsl_dir_t ; 
 int /*<<< orphan*/  dsl_sync_task_t ; 
 int /*<<< orphan*/  dst_node ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int zfs_sync_taskq_batch_pct ; 
 int zfs_zil_clean_taskq_maxalloc ; 
 int zfs_zil_clean_taskq_minalloc ; 
 int zfs_zil_clean_taskq_nthr_pct ; 
 int /*<<< orphan*/  zilog_t ; 
 int /*<<< orphan*/  zl_dirty_link ; 

__attribute__((used)) static dsl_pool_t *
FUNC9(spa_t *spa, uint64_t txg)
{
	dsl_pool_t *dp;
	blkptr_t *bp = FUNC5(spa);

	dp = FUNC1(sizeof (dsl_pool_t), KM_SLEEP);
	dp->dp_spa = spa;
	dp->dp_meta_rootbp = *bp;
	FUNC4(&dp->dp_config_rwlock, B_TRUE);
	FUNC7(dp, txg);

	FUNC8(&dp->dp_dirty_datasets, spa,
	    FUNC3(dsl_dataset_t, ds_dirty_link));
	FUNC8(&dp->dp_dirty_zilogs, spa,
	    FUNC3(zilog_t, zl_dirty_link));
	FUNC8(&dp->dp_dirty_dirs, spa,
	    FUNC3(dsl_dir_t, dd_dirty_link));
	FUNC8(&dp->dp_sync_tasks, spa,
	    FUNC3(dsl_sync_task_t, dst_node));
	FUNC8(&dp->dp_early_sync_tasks, spa,
	    FUNC3(dsl_sync_task_t, dst_node));

	dp->dp_sync_taskq = FUNC6("dp_sync_taskq",
	    zfs_sync_taskq_batch_pct, minclsyspri, 1, INT_MAX,
	    TASKQ_THREADS_CPU_PCT);

	dp->dp_zil_clean_taskq = FUNC6("dp_zil_clean_taskq",
	    zfs_zil_clean_taskq_nthr_pct, minclsyspri,
	    zfs_zil_clean_taskq_minalloc,
	    zfs_zil_clean_taskq_maxalloc,
	    TASKQ_PREPOPULATE | TASKQ_THREADS_CPU_PCT);

	FUNC2(&dp->dp_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&dp->dp_spaceavail_cv, NULL, CV_DEFAULT, NULL);

	dp->dp_vnrele_taskq = FUNC6("zfs_vn_rele_taskq", 1, minclsyspri,
	    1, 4, 0);

	return (dp);
}