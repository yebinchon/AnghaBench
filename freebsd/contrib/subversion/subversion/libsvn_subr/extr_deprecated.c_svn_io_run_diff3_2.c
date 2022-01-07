
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_io_run_diff3_3 (int*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int *,char const*,int const*,int *) ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_io_run_diff3_2(int *exitcode,
                   const char *dir,
                   const char *mine,
                   const char *older,
                   const char *yours,
                   const char *mine_label,
                   const char *older_label,
                   const char *yours_label,
                   apr_file_t *merged,
                   const char *diff3_cmd,
                   const apr_array_header_t *user_args,
                   apr_pool_t *pool)
{
  SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, pool));

  return svn_error_trace(svn_io_run_diff3_3(exitcode, dir,
                                            mine, older, yours,
                                            mine_label, older_label,
                                            yours_label, merged,
                                            diff3_cmd, user_args, pool));
}
