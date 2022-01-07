
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {int * baton; } ;
struct merge_dir_baton_t {int dummy; } ;
typedef int merge_cmd_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_pending_notifications (int *,struct merge_dir_baton_t*,int *) ;

__attribute__((used)) static svn_error_t *
merge_dir_closed(const char *relpath,
                 const svn_diff_source_t *left_source,
                 const svn_diff_source_t *right_source,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_dir_baton_t *db = dir_baton;

  SVN_ERR(handle_pending_notifications(merge_b, db, scratch_pool));

  return SVN_NO_ERROR;
}
