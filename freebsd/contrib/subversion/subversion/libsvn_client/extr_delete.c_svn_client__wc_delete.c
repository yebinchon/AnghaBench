
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int can_delete_node (scalar_t__*,char const*,TYPE_1__*,int *) ;
 int check_external (char const*,TYPE_1__*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_wc_delete4 (int ,char const*,int,int ,int ,int ,int ,void*,int *) ;

svn_error_t *
svn_client__wc_delete(const char *local_abspath,
                      svn_boolean_t force,
                      svn_boolean_t dry_run,
                      svn_boolean_t keep_local,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *pool)
{
  svn_boolean_t target_missing = FALSE;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(check_external(local_abspath, ctx, pool));

  if (!force && !keep_local)

    SVN_ERR(can_delete_node(&target_missing, local_abspath, ctx, pool));

  if (!dry_run)

    return svn_error_trace(svn_wc_delete4(ctx->wc_ctx, local_abspath,
                                          keep_local || target_missing
                                                                           ,
                                          TRUE ,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          notify_func, notify_baton, pool));

  return SVN_NO_ERROR;
}
