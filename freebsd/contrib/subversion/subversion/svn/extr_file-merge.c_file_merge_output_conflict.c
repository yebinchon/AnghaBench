
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
struct file_merge_baton {int scratch_pool; int config; int editor_cmd; int current_line_latest; int current_line_modified; int latest_file; int modified_file; int merged_file; scalar_t__ abort_merge; int remains_in_conflict; } ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int merge_file_chunks (int *,scalar_t__*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
file_merge_output_conflict(void *output_baton,
                           apr_off_t original_start,
                           apr_off_t original_length,
                           apr_off_t modified_start,
                           apr_off_t modified_length,
                           apr_off_t latest_start,
                           apr_off_t latest_length,
                           svn_diff_t *resolved_diff)
{
  struct file_merge_baton *b = output_baton;

  if (b->abort_merge)
    return SVN_NO_ERROR;

  SVN_ERR(merge_file_chunks(&b->remains_in_conflict,
                            &b->abort_merge,
                            b->merged_file,
                            b->modified_file,
                            b->latest_file,
                            modified_start,
                            modified_length,
                            latest_start,
                            latest_length,
                            &b->current_line_modified,
                            &b->current_line_latest,
                            b->editor_cmd,
                            b->config,
                            b->scratch_pool));
  return SVN_NO_ERROR;
}
