
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct summarize_baton_t* baton; } ;
struct summarize_baton_t {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int send_summary (struct summarize_baton_t*,char const*,int ,int ,int ,int *) ;
 int svn_client_diff_summarize_kind_normal ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
diff_dir_changed(const char *relpath,
                 const svn_diff_source_t *left_source,
                 const svn_diff_source_t *right_source,
                           apr_hash_t *left_props,
                           apr_hash_t *right_props,
                 const apr_array_header_t *prop_changes,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  struct summarize_baton_t *b = processor->baton;

  SVN_ERR(send_summary(b, relpath, svn_client_diff_summarize_kind_normal,
                       TRUE, svn_node_dir, scratch_pool));

  return SVN_NO_ERROR;
}
