
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_client_mergeinfo_log (int ,char const*,int const*,char const*,int const*,int ,void*,int ,int ,int const*,int *,int *) ;
 int svn_depth_empty ;

svn_error_t *
svn_client_mergeinfo_log_eligible(const char *path_or_url,
                                  const svn_opt_revision_t *peg_revision,
                                  const char *merge_source_path_or_url,
                                  const svn_opt_revision_t *src_peg_revision,
                                  svn_log_entry_receiver_t log_receiver,
                                  void *log_receiver_baton,
                                  svn_boolean_t discover_changed_paths,
                                  const apr_array_header_t *revprops,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *pool)
{
  return svn_client_mergeinfo_log(FALSE, path_or_url, peg_revision,
                                  merge_source_path_or_url,
                                  src_peg_revision,
                                  log_receiver, log_receiver_baton,
                                  discover_changed_paths,
                                  svn_depth_empty, revprops, ctx,
                                  pool);
}
