
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_client_mergeinfo_log2 (int ,char const*,TYPE_1__ const*,char const*,TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int ,void*,int ,int ,int const*,int *,int *) ;
 void* svn_opt_revision_unspecified ;

svn_error_t *
svn_client_mergeinfo_log(svn_boolean_t finding_merged,
                         const char *target_path_or_url,
                         const svn_opt_revision_t *target_peg_revision,
                         const char *source_path_or_url,
                         const svn_opt_revision_t *source_peg_revision,
                         svn_log_entry_receiver_t receiver,
                         void *receiver_baton,
                         svn_boolean_t discover_changed_paths,
                         svn_depth_t depth,
                         const apr_array_header_t *revprops,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  svn_opt_revision_t start_revision, end_revision;

  start_revision.kind = svn_opt_revision_unspecified;
  end_revision.kind = svn_opt_revision_unspecified;

  return svn_client_mergeinfo_log2(finding_merged,
                                   target_path_or_url, target_peg_revision,
                                   source_path_or_url, source_peg_revision,
                                   &start_revision, &end_revision,
                                   receiver, receiver_baton,
                                   discover_changed_paths, depth, revprops,
                                   ctx, scratch_pool);
}
