
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_2__* baton; } ;
struct TYPE_7__ {int show_copies_as_adds; scalar_t__ no_diff_added; } ;
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
 int * svn_error_trace (int ) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
diff_dir_added(const char *relpath,
               const svn_diff_source_t *copyfrom_source,
               const svn_diff_source_t *right_source,
                         apr_hash_t *copyfrom_props,
                         apr_hash_t *right_props,
               void *dir_baton,
               const struct svn_diff_tree_processor_t *processor,
               apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;
  apr_hash_t *left_props;
  apr_array_header_t *prop_changes;

  if (dwi->no_diff_added)
    return SVN_NO_ERROR;

  if (copyfrom_source && !dwi->show_copies_as_adds)
    {
      left_props = copyfrom_props ? copyfrom_props
                                  : apr_hash_make(scratch_pool);
    }
  else
    {
      left_props = apr_hash_make(scratch_pool);
      copyfrom_source = ((void*)0);
    }

  SVN_ERR(svn_prop_diffs(&prop_changes, right_props, left_props,
                         scratch_pool));

  return svn_error_trace(diff_props_changed(relpath,
                                            copyfrom_source ? copyfrom_source->revision
                                                            : DIFF_REVNUM_NONEXISTENT,
                                            right_source->revision,
                                            prop_changes,
                                            left_props, right_props,
                                            TRUE ,
                                            dwi,
                                            scratch_pool));
}
