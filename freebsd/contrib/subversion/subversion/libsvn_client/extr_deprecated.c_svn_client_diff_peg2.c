
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int SVN_APR_LOCALE_CHARSET ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_client_diff_peg3 (int const*,char const*,int const*,int const*,int const*,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_client_diff_peg2(const apr_array_header_t *options,
                     const char *path,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *start_revision,
                     const svn_opt_revision_t *end_revision,
                     svn_boolean_t recurse,
                     svn_boolean_t ignore_ancestry,
                     svn_boolean_t no_diff_deleted,
                     svn_boolean_t ignore_content_type,
                     apr_file_t *outfile,
                     apr_file_t *errfile,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  return svn_client_diff_peg3(options, path, peg_revision, start_revision,
                              end_revision,
                              SVN_DEPTH_INFINITY_OR_FILES(recurse),
                              ignore_ancestry, no_diff_deleted,
                              ignore_content_type, SVN_APR_LOCALE_CHARSET,
                              outfile, errfile, ctx, pool);
}
