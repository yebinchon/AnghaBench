
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_source_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_diff_tree_processor_t {struct summarize_baton_t* baton; } ;
struct summarize_baton_t {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int props_changed (int const*,int *) ;
 int send_summary (struct summarize_baton_t*,char const*,int ,int ,int ,int *) ;
 int svn_client_diff_summarize_kind_modified ;
 int svn_client_diff_summarize_kind_normal ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
diff_file_changed(const char *relpath,
                  const svn_diff_source_t *left_source,
                  const svn_diff_source_t *right_source,
                  const char *left_file,
                  const char *right_file,
                            apr_hash_t *left_props,
                            apr_hash_t *right_props,
                  svn_boolean_t file_modified,
                  const apr_array_header_t *prop_changes,
                  void *file_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  struct summarize_baton_t *b = processor->baton;

  SVN_ERR(send_summary(b, relpath,
                       file_modified ? svn_client_diff_summarize_kind_modified
                                     : svn_client_diff_summarize_kind_normal,
                       props_changed(prop_changes, scratch_pool),
                       svn_node_file, scratch_pool));

  return SVN_NO_ERROR;
}
