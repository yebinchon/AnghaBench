
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_status_func3_t ;
typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct status4_wrapper_baton {void* old_baton; int old_func; int wc_ctx; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 int status4_wrapper_func ;
 int * svn_client_status5 (int *,TYPE_1__*,char const*,int const*,int ,int ,int ,int ,int ,int ,int const*,int ,struct status4_wrapper_baton*,int *) ;

svn_error_t *
svn_client_status4(svn_revnum_t *result_rev,
                   const char *path,
                   const svn_opt_revision_t *revision,
                   svn_wc_status_func3_t status_func,
                   void *status_baton,
                   svn_depth_t depth,
                   svn_boolean_t get_all,
                   svn_boolean_t update,
                   svn_boolean_t no_ignore,
                   svn_boolean_t ignore_externals,
                   const apr_array_header_t *changelists,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  struct status4_wrapper_baton swb;

  swb.wc_ctx = ctx->wc_ctx;
  swb.old_func = status_func;
  swb.old_baton = status_baton;

  return svn_client_status5(result_rev, ctx, path, revision, depth, get_all,
                            update, no_ignore, ignore_externals, TRUE,
                            changelists, status4_wrapper_func, &swb, pool);
}
