
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


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_client_diff4 (int const*,char const*,int const*,char const*,int const*,int *,int ,int ,int ,int ,char const*,int *,int *,int *,int *,int *) ;

svn_error_t *
svn_client_diff3(const apr_array_header_t *options,
                 const char *path1,
                 const svn_opt_revision_t *revision1,
                 const char *path2,
                 const svn_opt_revision_t *revision2,
                 svn_boolean_t recurse,
                 svn_boolean_t ignore_ancestry,
                 svn_boolean_t no_diff_deleted,
                 svn_boolean_t ignore_content_type,
                 const char *header_encoding,
                 apr_file_t *outfile,
                 apr_file_t *errfile,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  return svn_client_diff4(options, path1, revision1, path2,
                          revision2, ((void*)0),
                          SVN_DEPTH_INFINITY_OR_FILES(recurse),
                          ignore_ancestry, no_diff_deleted,
                          ignore_content_type, header_encoding,
                          outfile, errfile, ((void*)0), ctx, pool);
}
