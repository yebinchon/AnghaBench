
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int svn_client__mergeinfo_log (int ,char const*,int const*,int *,char const*,int const*,int const*,int const*,int ,void*,int ,int ,int const*,int *,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_mergeinfo_log2(svn_boolean_t finding_merged,
                          const char *target_path_or_url,
                          const svn_opt_revision_t *target_peg_revision,
                          const char *source_path_or_url,
                          const svn_opt_revision_t *source_peg_revision,
                          const svn_opt_revision_t *source_start_revision,
                          const svn_opt_revision_t *source_end_revision,
                          svn_log_entry_receiver_t log_receiver,
                          void *log_receiver_baton,
                          svn_boolean_t discover_changed_paths,
                          svn_depth_t depth,
                          const apr_array_header_t *revprops,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *scratch_pool)
{
  return svn_error_trace(
         svn_client__mergeinfo_log(finding_merged, target_path_or_url,
                                   target_peg_revision, ((void*)0),
                                   source_path_or_url, source_peg_revision,
                                   source_start_revision, source_end_revision,
                                   log_receiver, log_receiver_baton,
                                   discover_changed_paths, depth, revprops,
                                   ctx, ((void*)0),
                                   scratch_pool, scratch_pool));
}
