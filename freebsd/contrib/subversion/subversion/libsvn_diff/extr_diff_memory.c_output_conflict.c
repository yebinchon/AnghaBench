
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef scalar_t__ svn_diff_conflict_display_style_t ;
struct TYPE_4__ {scalar_t__ conflict_style; int cancel_baton; int cancel_func; } ;
typedef TYPE_1__ merge_output_baton_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int merge_output_vtable ;
 int output_merge_marker (TYPE_1__*,int) ;
 int output_merge_token_range (TYPE_1__*,int,int ,int ) ;
 scalar_t__ svn_diff_conflict_display_latest ;
 scalar_t__ svn_diff_conflict_display_modified ;
 scalar_t__ svn_diff_conflict_display_modified_latest ;
 scalar_t__ svn_diff_conflict_display_modified_original_latest ;
 scalar_t__ svn_diff_conflict_display_resolved_modified_latest ;
 int * svn_diff_output2 (int *,void*,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
output_conflict(void *baton,
                apr_off_t original_start, apr_off_t original_length,
                apr_off_t modified_start, apr_off_t modified_length,
                apr_off_t latest_start, apr_off_t latest_length,
                svn_diff_t *diff)
{
  merge_output_baton_t *btn = baton;

  svn_diff_conflict_display_style_t style = btn->conflict_style;

  if (style == svn_diff_conflict_display_resolved_modified_latest)
    {
      if (diff)
        return svn_diff_output2(diff, baton, &merge_output_vtable,
                                btn->cancel_func, btn->cancel_baton);
      else
        style = svn_diff_conflict_display_modified_latest;
    }

  if (style == svn_diff_conflict_display_modified_latest ||
      style == svn_diff_conflict_display_modified_original_latest)
    {
      SVN_ERR(output_merge_marker(btn, 1 ));
      SVN_ERR(output_merge_token_range(btn, 1 ,
                                       modified_start, modified_length));

      if (style == svn_diff_conflict_display_modified_original_latest)
        {
          SVN_ERR(output_merge_marker(btn, 0 ));
          SVN_ERR(output_merge_token_range(btn, 0 ,
                                           original_start, original_length));
        }

      SVN_ERR(output_merge_marker(btn, 2 ));
      SVN_ERR(output_merge_token_range(btn, 2 ,
                                       latest_start, latest_length));
      SVN_ERR(output_merge_marker(btn, 3 ));
    }
  else if (style == svn_diff_conflict_display_modified)
      SVN_ERR(output_merge_token_range(btn, 1 ,
                                       modified_start, modified_length));
  else if (style == svn_diff_conflict_display_latest)
      SVN_ERR(output_merge_token_range(btn, 2 ,
                                       latest_start, latest_length));
  else
    SVN_ERR_MALFUNCTION();

  return SVN_NO_ERROR;
}
