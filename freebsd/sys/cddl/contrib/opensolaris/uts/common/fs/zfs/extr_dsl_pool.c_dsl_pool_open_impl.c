
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {void* dp_vnrele_taskq; int dp_spaceavail_cv; int dp_lock; void* dp_zil_clean_taskq; void* dp_sync_taskq; int dp_early_sync_tasks; int dp_sync_tasks; int dp_dirty_dirs; int dp_dirty_zilogs; int dp_dirty_datasets; int dp_config_rwlock; int dp_meta_rootbp; int * dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int blkptr_t ;


 int B_TRUE ;
 int CV_DEFAULT ;
 int INT_MAX ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int TASKQ_PREPOPULATE ;
 int TASKQ_THREADS_CPU_PCT ;
 int cv_init (int *,int *,int ,int *) ;
 int dd_dirty_link ;
 int ds_dirty_link ;
 int dsl_dataset_t ;
 int dsl_dir_t ;
 int dsl_sync_task_t ;
 int dst_node ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int minclsyspri ;
 int mutex_init (int *,int *,int ,int *) ;
 int offsetof (int ,int ) ;
 int rrw_init (int *,int ) ;
 int * spa_get_rootblkptr (int *) ;
 void* taskq_create (char*,int,int ,int,int,int) ;
 int txg_init (TYPE_1__*,int ) ;
 int txg_list_create (int *,int *,int ) ;
 int zfs_sync_taskq_batch_pct ;
 int zfs_zil_clean_taskq_maxalloc ;
 int zfs_zil_clean_taskq_minalloc ;
 int zfs_zil_clean_taskq_nthr_pct ;
 int zilog_t ;
 int zl_dirty_link ;

__attribute__((used)) static dsl_pool_t *
dsl_pool_open_impl(spa_t *spa, uint64_t txg)
{
 dsl_pool_t *dp;
 blkptr_t *bp = spa_get_rootblkptr(spa);

 dp = kmem_zalloc(sizeof (dsl_pool_t), KM_SLEEP);
 dp->dp_spa = spa;
 dp->dp_meta_rootbp = *bp;
 rrw_init(&dp->dp_config_rwlock, B_TRUE);
 txg_init(dp, txg);

 txg_list_create(&dp->dp_dirty_datasets, spa,
     offsetof(dsl_dataset_t, ds_dirty_link));
 txg_list_create(&dp->dp_dirty_zilogs, spa,
     offsetof(zilog_t, zl_dirty_link));
 txg_list_create(&dp->dp_dirty_dirs, spa,
     offsetof(dsl_dir_t, dd_dirty_link));
 txg_list_create(&dp->dp_sync_tasks, spa,
     offsetof(dsl_sync_task_t, dst_node));
 txg_list_create(&dp->dp_early_sync_tasks, spa,
     offsetof(dsl_sync_task_t, dst_node));

 dp->dp_sync_taskq = taskq_create("dp_sync_taskq",
     zfs_sync_taskq_batch_pct, minclsyspri, 1, INT_MAX,
     TASKQ_THREADS_CPU_PCT);

 dp->dp_zil_clean_taskq = taskq_create("dp_zil_clean_taskq",
     zfs_zil_clean_taskq_nthr_pct, minclsyspri,
     zfs_zil_clean_taskq_minalloc,
     zfs_zil_clean_taskq_maxalloc,
     TASKQ_PREPOPULATE | TASKQ_THREADS_CPU_PCT);

 mutex_init(&dp->dp_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&dp->dp_spaceavail_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 dp->dp_vnrele_taskq = taskq_create("zfs_vn_rele_taskq", 1, minclsyspri,
     1, 4, 0);

 return (dp);
}
