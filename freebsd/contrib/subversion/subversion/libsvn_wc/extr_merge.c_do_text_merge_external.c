
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_run_diff3_3 (int*,char*,char const*,char const*,char const*,char const*,char const*,char const*,int *,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
do_text_merge_external(svn_boolean_t *contains_conflicts,
                       apr_file_t *result_f,
                       const char *diff3_cmd,
                       const apr_array_header_t *merge_options,
                       const char *detranslated_target,
                       const char *left_abspath,
                       const char *right_abspath,
                       const char *target_label,
                       const char *left_label,
                       const char *right_label,
                       apr_pool_t *scratch_pool)
{
  int exit_code;

  SVN_ERR(svn_io_run_diff3_3(&exit_code, ".",
                             detranslated_target, left_abspath, right_abspath,
                             target_label, left_label, right_label,
                             result_f, diff3_cmd,
                             merge_options, scratch_pool));

  *contains_conflicts = exit_code == 1;

  return SVN_NO_ERROR;
}
