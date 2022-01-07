
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_file_options_t ;
typedef int svn_cancel_func_t ;
typedef void* svn_boolean_t ;
struct file_merge_baton {char const* editor_cmd; void* remains_in_conflict; void* abort_merge; int * scratch_pool; int * config; int * merged_file; scalar_t__ current_line_latest; scalar_t__ current_line_modified; scalar_t__ current_line_original; int * latest_file; int * modified_file; int * original_file; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,char const*,char*,char const*) ;
 int file_merge_diff_output_fns ;
 int svn_cmdline_printf (int *,int ,char const*) ;
 int svn_diff_file_diff3_2 (int **,char const*,char const*,char const*,int *,int *) ;
 int * svn_diff_file_options_create (int *) ;
 int svn_diff_output2 (int *,struct file_merge_baton*,int *,int ,void*) ;
 char* svn_dirent_local_style (char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_io_copy_file (char const*,char const*,void*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_is_file_executable (void**,char const*,int *) ;
 int svn_io_open_unique_file3 (int **,char const**,int *,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,void*,int *) ;
 int svn_io_set_file_executable (char const*,void*,void*,int *) ;

svn_error_t *
svn_cl__merge_file(svn_boolean_t *remains_in_conflict,
                   const char *base_path,
                   const char *their_path,
                   const char *my_path,
                   const char *merged_path,
                   const char *wc_path,
                   const char *path_prefix,
                   const char *editor_cmd,
                   apr_hash_t *config,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *scratch_pool)
{
  svn_diff_t *diff;
  svn_diff_file_options_t *diff_options;
  apr_file_t *original_file;
  apr_file_t *modified_file;
  apr_file_t *latest_file;
  apr_file_t *merged_file;
  const char *merged_file_name;
  struct file_merge_baton fmb;
  svn_boolean_t executable;
  const char *merged_path_local_style;
  const char *merged_rel_path;
  const char *wc_path_local_style;
  const char *wc_rel_path = svn_dirent_skip_ancestor(path_prefix, wc_path);



  if (wc_rel_path)
    wc_path_local_style = svn_dirent_local_style(wc_rel_path, scratch_pool);
  else
    wc_path_local_style = svn_dirent_local_style(wc_path, scratch_pool);

  SVN_ERR(svn_cmdline_printf(scratch_pool, _("Merging '%s'.\n"),
                             wc_path_local_style));

  SVN_ERR(svn_io_file_open(&original_file, base_path,
                           APR_READ | APR_BUFFERED,
                           APR_OS_DEFAULT, scratch_pool));
  SVN_ERR(svn_io_file_open(&modified_file, their_path,
                           APR_READ | APR_BUFFERED,
                           APR_OS_DEFAULT, scratch_pool));
  SVN_ERR(svn_io_file_open(&latest_file, my_path,
                           APR_READ | APR_BUFFERED,
                           APR_OS_DEFAULT, scratch_pool));
  SVN_ERR(svn_io_open_unique_file3(&merged_file, &merged_file_name,
                                   ((void*)0), svn_io_file_del_none,
                                   scratch_pool, scratch_pool));

  diff_options = svn_diff_file_options_create(scratch_pool);
  SVN_ERR(svn_diff_file_diff3_2(&diff, base_path, their_path, my_path,
                                diff_options, scratch_pool));

  fmb.original_file = original_file;
  fmb.modified_file = modified_file;
  fmb.latest_file = latest_file;
  fmb.current_line_original = 0;
  fmb.current_line_modified = 0;
  fmb.current_line_latest = 0;
  fmb.merged_file = merged_file;
  fmb.remains_in_conflict = FALSE;
  fmb.editor_cmd = editor_cmd;
  fmb.config = config;
  fmb.abort_merge = FALSE;
  fmb.scratch_pool = scratch_pool;

  SVN_ERR(svn_diff_output2(diff, &fmb, &file_merge_diff_output_fns,
                           cancel_func, cancel_baton));

  SVN_ERR(svn_io_file_close(original_file, scratch_pool));
  SVN_ERR(svn_io_file_close(modified_file, scratch_pool));
  SVN_ERR(svn_io_file_close(latest_file, scratch_pool));
  SVN_ERR(svn_io_file_close(merged_file, scratch_pool));


  if (remains_in_conflict)
    *remains_in_conflict = TRUE;

  if (fmb.abort_merge)
    {
      SVN_ERR(svn_io_remove_file2(merged_file_name, TRUE, scratch_pool));
      SVN_ERR(svn_cmdline_printf(scratch_pool, _("Merge of '%s' aborted.\n"),
                                 wc_path_local_style));
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_io_is_file_executable(&executable, merged_path, scratch_pool));

  merged_rel_path = svn_dirent_skip_ancestor(path_prefix, merged_path);
  if (merged_rel_path)
    merged_path_local_style = svn_dirent_local_style(merged_rel_path,
                                                     scratch_pool);
  else
    merged_path_local_style = svn_dirent_local_style(merged_path,
                                                     scratch_pool);

  SVN_ERR_W(svn_io_copy_file(merged_file_name, merged_path, FALSE,
                             scratch_pool),
            apr_psprintf(scratch_pool,
                         _("Could not write merged result to '%s', saved "
                           "instead at '%s'.\n'%s' remains in conflict.\n"),
                         merged_path_local_style,
                         svn_dirent_local_style(merged_file_name,
                                                scratch_pool),
                         wc_path_local_style));
  SVN_ERR(svn_io_set_file_executable(merged_path, executable, FALSE,
                                     scratch_pool));
  SVN_ERR(svn_io_remove_file2(merged_file_name, TRUE, scratch_pool));



  if (remains_in_conflict)
    *remains_in_conflict = fmb.remains_in_conflict;

  if (fmb.remains_in_conflict)
    SVN_ERR(svn_cmdline_printf(
              scratch_pool,
              _("Merge of '%s' completed (remains in conflict).\n"),
              wc_path_local_style));
  else
    SVN_ERR(svn_cmdline_printf(
              scratch_pool, _("Merge of '%s' completed.\n"),
              wc_path_local_style));

  return SVN_NO_ERROR;
}
