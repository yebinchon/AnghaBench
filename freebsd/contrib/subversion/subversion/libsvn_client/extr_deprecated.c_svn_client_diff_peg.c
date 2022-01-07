
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


 int FALSE ;
 int * svn_client_diff_peg2 (int const*,char const*,int const*,int const*,int const*,int ,int ,int ,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_client_diff_peg(const apr_array_header_t *options,
                    const char *path,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *start_revision,
                    const svn_opt_revision_t *end_revision,
                    svn_boolean_t recurse,
                    svn_boolean_t ignore_ancestry,
                    svn_boolean_t no_diff_deleted,
                    apr_file_t *outfile,
                    apr_file_t *errfile,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  return svn_client_diff_peg2(options, path, peg_revision,
                              start_revision, end_revision, recurse,
                              ignore_ancestry, no_diff_deleted, FALSE,
                              outfile, errfile, ctx, pool);
}
