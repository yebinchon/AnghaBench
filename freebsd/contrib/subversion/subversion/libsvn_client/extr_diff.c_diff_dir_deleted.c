
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_2__* baton; } ;
struct TYPE_6__ {scalar_t__ no_diff_deleted; } ;
typedef TYPE_2__ diff_writer_info_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int DIFF_REVNUM_NONEXISTENT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int diff_props_changed (char const*,int ,int ,int *,int *,int *,int ,TYPE_2__*,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
diff_dir_deleted(const char *relpath,
                 const svn_diff_source_t *left_source,
                           apr_hash_t *left_props,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;
  apr_array_header_t *prop_changes;
  apr_hash_t *right_props;

  if (dwi->no_diff_deleted)
    return SVN_NO_ERROR;

  right_props = apr_hash_make(scratch_pool);
  SVN_ERR(svn_prop_diffs(&prop_changes, right_props,
                         left_props, scratch_pool));

  SVN_ERR(diff_props_changed(relpath,
                             left_source->revision,
                             DIFF_REVNUM_NONEXISTENT,
                             prop_changes,
                             left_props, right_props,
                             TRUE ,
                             dwi,
                             scratch_pool));

  return SVN_NO_ERROR;
}
