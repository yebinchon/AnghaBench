
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_stream_t ;
typedef int svn_io_file_del_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_file_options_t ;
typedef int svn_diff_conflict_display_style_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_diff_file_diff3_2 (int **,char const*,char const*,char const*,int *,int *) ;
 int * svn_diff_file_options_create (int *) ;
 int svn_diff_file_options_parse (int *,int const*,int *) ;
 int svn_diff_file_output_merge3 (int *,int *,char const*,char const*,char const*,int *,int *,int *,int *,int ,int ,void*,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
merge_showing_conflicts(const char **chosen_abspath,
                        svn_wc__db_t *db,
                        const char *wri_abspath,
                        svn_diff_conflict_display_style_t style,
                        const apr_array_header_t *merge_options,
                        const char *left_abspath,
                        const char *detranslated_target,
                        const char *right_abspath,
                        svn_io_file_del_t delete_when,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *temp_dir;
  svn_stream_t *chosen_stream;
  svn_diff_t *diff;
  svn_diff_file_options_t *diff3_options;

  diff3_options = svn_diff_file_options_create(scratch_pool);
  if (merge_options)
    SVN_ERR(svn_diff_file_options_parse(diff3_options,
                                        merge_options,
                                        scratch_pool));

  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir, db,
                                         wri_abspath,
                                         scratch_pool, scratch_pool));




  SVN_ERR(svn_stream_open_unique(&chosen_stream, chosen_abspath,
                                 temp_dir, delete_when,
                                 result_pool, scratch_pool));
  SVN_ERR(svn_diff_file_diff3_2(&diff,
                                left_abspath,
                                detranslated_target, right_abspath,
                                diff3_options, scratch_pool));
  SVN_ERR(svn_diff_file_output_merge3(chosen_stream, diff,
                                      left_abspath,
                                      detranslated_target,
                                      right_abspath,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                      style, cancel_func, cancel_baton,
                                      scratch_pool));
  SVN_ERR(svn_stream_close(chosen_stream));

  return SVN_NO_ERROR;
}
