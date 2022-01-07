
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct file_merge_baton {int scratch_pool; int current_line_latest; int latest_file; int merged_file; scalar_t__ abort_merge; } ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int copy_to_merged_file (int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
file_merge_output_diff_common(void *output_baton,
                              apr_off_t original_start,
                              apr_off_t original_length,
                              apr_off_t modified_start,
                              apr_off_t modified_length,
                              apr_off_t latest_start,
                              apr_off_t latest_length)
{
  struct file_merge_baton *b = output_baton;

  if (b->abort_merge)
    return SVN_NO_ERROR;

  SVN_ERR(copy_to_merged_file(&b->current_line_latest,
                              b->merged_file,
                              b->latest_file,
                              latest_start,
                              latest_length,
                              b->current_line_latest,
                              b->scratch_pool));
  return SVN_NO_ERROR;
}
