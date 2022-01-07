
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
struct TYPE_3__ {int notify_baton2; int (* notify_func2 ) (int ,int *,int *) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int stub1 (int ,int *,int *) ;
 int * svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_merge_completed ;

__attribute__((used)) static void
notify_merge_completed(const char *target_abspath,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *pool)
{
  if (ctx->notify_func2)
    {
      svn_wc_notify_t *n
        = svn_wc_create_notify(target_abspath, svn_wc_notify_merge_completed,
                               pool);
      ctx->notify_func2(ctx->notify_baton2, n, pool);
    }
}
