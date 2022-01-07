
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status_func2_t ;
typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int * svn_client_status3 (int *,char const*,int const*,int ,void*,int ,int ,int ,int ,int ,int *,int *,int *) ;

svn_error_t *
svn_client_status2(svn_revnum_t *result_rev,
                   const char *path,
                   const svn_opt_revision_t *revision,
                   svn_wc_status_func2_t status_func,
                   void *status_baton,
                   svn_boolean_t recurse,
                   svn_boolean_t get_all,
                   svn_boolean_t update,
                   svn_boolean_t no_ignore,
                   svn_boolean_t ignore_externals,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_client_status3(result_rev, path, revision,
                            status_func, status_baton,
                            SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse),
                            get_all, update, no_ignore, ignore_externals, ((void*)0),
                            ctx, pool);
}
