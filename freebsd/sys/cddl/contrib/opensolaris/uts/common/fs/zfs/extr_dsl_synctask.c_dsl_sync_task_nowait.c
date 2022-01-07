
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_space_check_t ;
typedef int dsl_syncfunc_t ;
typedef int dsl_pool_t ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int dsl_sync_task_nowait_common (int *,int *,void*,int,int ,int *,int ) ;

void
dsl_sync_task_nowait(dsl_pool_t *dp, dsl_syncfunc_t *syncfunc, void *arg,
    int blocks_modified, zfs_space_check_t space_check, dmu_tx_t *tx)
{
 dsl_sync_task_nowait_common(dp, syncfunc, arg,
     blocks_modified, space_check, tx, B_FALSE);
}
