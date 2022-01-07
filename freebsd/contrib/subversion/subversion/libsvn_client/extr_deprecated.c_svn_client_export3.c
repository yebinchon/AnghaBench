
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


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_client_export4 (int *,char const*,char const*,int const*,int const*,int ,int ,int ,char const*,int *,int *) ;

svn_error_t *
svn_client_export3(svn_revnum_t *result_rev,
                   const char *from_path_or_url,
                   const char *to_path,
                   const svn_opt_revision_t *peg_revision,
                   const svn_opt_revision_t *revision,
                   svn_boolean_t overwrite,
                   svn_boolean_t ignore_externals,
                   svn_boolean_t recurse,
                   const char *native_eol,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_client_export4(result_rev, from_path_or_url, to_path,
                            peg_revision, revision, overwrite, ignore_externals,
                            SVN_DEPTH_INFINITY_OR_FILES(recurse),
                            native_eol, ctx, pool);
}
