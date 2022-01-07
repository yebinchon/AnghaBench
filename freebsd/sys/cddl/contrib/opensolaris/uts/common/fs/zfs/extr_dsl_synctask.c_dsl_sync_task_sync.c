
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ dst_error; int dst_space; scalar_t__ (* dst_checkfunc ) (int ,int *) ;scalar_t__ dst_nowaiter; int dst_arg; int (* dst_syncfunc ) (int ,int *) ;int dst_space_check; TYPE_2__* dst_pool; } ;
typedef TYPE_1__ dsl_sync_task_t ;
struct TYPE_8__ {int dp_config_rwlock; int dp_root_dir; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {scalar_t__ dd_used_bytes; } ;


 int ASSERT0 (scalar_t__) ;
 int ENOSPC ;
 int FTAG ;
 int RW_WRITER ;
 scalar_t__ SET_ERROR (int ) ;
 int ZFS_SPACE_CHECK_NONE ;
 TYPE_6__* dsl_dir_phys (int ) ;
 scalar_t__ dsl_pool_unreserved_space (TYPE_2__*,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 scalar_t__ stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

void
dsl_sync_task_sync(dsl_sync_task_t *dst, dmu_tx_t *tx)
{
 dsl_pool_t *dp = dst->dst_pool;

 ASSERT0(dst->dst_error);
 if (dst->dst_space_check != ZFS_SPACE_CHECK_NONE) {
  uint64_t quota = dsl_pool_unreserved_space(dp,
      dst->dst_space_check);
  uint64_t used = dsl_dir_phys(dp->dp_root_dir)->dd_used_bytes;


  if (used + dst->dst_space * 3 > quota) {
   dst->dst_error = SET_ERROR(ENOSPC);
   if (dst->dst_nowaiter)
    kmem_free(dst, sizeof (*dst));
   return;
  }
 }




 rrw_enter(&dp->dp_config_rwlock, RW_WRITER, FTAG);
 dst->dst_error = dst->dst_checkfunc(dst->dst_arg, tx);
 if (dst->dst_error == 0)
  dst->dst_syncfunc(dst->dst_arg, tx);
 rrw_exit(&dp->dp_config_rwlock, FTAG);
 if (dst->dst_nowaiter)
  kmem_free(dst, sizeof (*dst));
}
