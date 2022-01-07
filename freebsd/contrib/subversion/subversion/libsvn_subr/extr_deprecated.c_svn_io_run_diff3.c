
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_error_trace (int ) ;
 int svn_io_run_diff3_2 (int*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int *,char const*,int *,int *) ;

svn_error_t *
svn_io_run_diff3(const char *dir,
                 const char *mine,
                 const char *older,
                 const char *yours,
                 const char *mine_label,
                 const char *older_label,
                 const char *yours_label,
                 apr_file_t *merged,
                 int *exitcode,
                 const char *diff3_cmd,
                 apr_pool_t *pool)
{
  return svn_error_trace(svn_io_run_diff3_2(exitcode, dir, mine, older, yours,
                                            mine_label, older_label,
                                            yours_label,
                                            merged, diff3_cmd, ((void*)0), pool));
}
