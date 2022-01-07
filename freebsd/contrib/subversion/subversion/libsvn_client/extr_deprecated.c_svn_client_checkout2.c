
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int svn_client_checkout3 (int *,char const*,char const*,int const*,int const*,int ,int ,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_checkout2(svn_revnum_t *result_rev,
                     const char *URL,
                     const char *path,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_boolean_t recurse,
                     svn_boolean_t ignore_externals,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  return svn_error_trace(svn_client_checkout3(result_rev, URL, path,
                                        peg_revision, revision,
                                        SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                        ignore_externals, FALSE, ctx, pool));
}
