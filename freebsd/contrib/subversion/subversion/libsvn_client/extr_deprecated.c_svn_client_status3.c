
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status_func2_t ;
typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct status3_wrapper_baton {void* old_baton; int old_func; int member_0; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int status3_wrapper_func ;
 int * svn_client_status4 (int *,char const*,int const*,int ,struct status3_wrapper_baton*,int ,int ,int ,int ,int ,int const*,int *,int *) ;

svn_error_t *
svn_client_status3(svn_revnum_t *result_rev,
                   const char *path,
                   const svn_opt_revision_t *revision,
                   svn_wc_status_func2_t status_func,
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
  struct status3_wrapper_baton swb = { 0 };
  swb.old_func = status_func;
  swb.old_baton = status_baton;
  return svn_client_status4(result_rev, path, revision, status3_wrapper_func,
                            &swb, depth, get_all, update, no_ignore,
                            ignore_externals, changelists, ctx, pool);
}
