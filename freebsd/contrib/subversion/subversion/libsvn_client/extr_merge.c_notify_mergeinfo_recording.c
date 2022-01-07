
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * merge_range; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_merge_range_t ;
struct TYPE_7__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int stub1 (int ,TYPE_1__*,int *) ;
 int * svn_merge_range_dup (int const*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_merge_record_info_begin ;

__attribute__((used)) static void
notify_mergeinfo_recording(const char *target_abspath,
                           const svn_merge_range_t *range,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *pool)
{
  if (ctx->notify_func2)
    {
      svn_wc_notify_t *n = svn_wc_create_notify(
        target_abspath, svn_wc_notify_merge_record_info_begin, pool);

      n->merge_range = range ? svn_merge_range_dup(range, pool) : ((void*)0);
      ctx->notify_func2(ctx->notify_baton2, n, pool);
    }
}
