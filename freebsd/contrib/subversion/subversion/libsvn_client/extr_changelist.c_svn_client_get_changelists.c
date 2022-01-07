
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_3__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_changelist_receiver_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_wc_get_changelists (int ,char const*,int ,int const*,int ,void*,int ,int ,int *) ;

svn_error_t *
svn_client_get_changelists(const char *path,
                           const apr_array_header_t *changelists,
                           svn_depth_t depth,
                           svn_changelist_receiver_t callback_func,
                           void *callback_baton,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *pool)
{
  const char *local_abspath;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc_get_changelists(ctx->wc_ctx, local_abspath, depth, changelists,
                                 callback_func, callback_baton,
                                 ctx->cancel_func, ctx->cancel_baton, pool));
  return SVN_NO_ERROR;
}
