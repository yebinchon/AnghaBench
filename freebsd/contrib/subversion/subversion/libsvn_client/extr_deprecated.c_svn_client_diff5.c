
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int TRUE ;
 int * svn_client_diff6 (int const*,char const*,int const*,char const*,int const*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,char const*,int *,int *,int const*,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_client_diff5(const apr_array_header_t *diff_options,
                 const char *path1,
                 const svn_opt_revision_t *revision1,
                 const char *path2,
                 const svn_opt_revision_t *revision2,
                 const char *relative_to_dir,
                 svn_depth_t depth,
                 svn_boolean_t ignore_ancestry,
                 svn_boolean_t no_diff_deleted,
                 svn_boolean_t show_copies_as_adds,
                 svn_boolean_t ignore_content_type,
                 svn_boolean_t use_git_diff_format,
                 const char *header_encoding,
                 apr_file_t *outfile,
                 apr_file_t *errfile,
                 const apr_array_header_t *changelists,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  svn_stream_t *outstream = svn_stream_from_aprfile2(outfile, TRUE, pool);
  svn_stream_t *errstream = svn_stream_from_aprfile2(errfile, TRUE, pool);

  return svn_client_diff6(diff_options, path1, revision1, path2,
                          revision2, relative_to_dir, depth,
                          ignore_ancestry, FALSE ,
                          no_diff_deleted, show_copies_as_adds,
                          ignore_content_type, FALSE ,
                          FALSE , use_git_diff_format,
                          header_encoding,
                          outstream, errstream, changelists, ctx, pool);
}
