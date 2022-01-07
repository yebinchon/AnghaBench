
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_io_run_diff2 (char const*,char const* const*,int,char const*,char const*,char const*,char const*,int*,int *,int *,char const*,int *) ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_io_run_diff(const char *dir,
                const char *const *user_args,
                int num_user_args,
                const char *label1,
                const char *label2,
                const char *from,
                const char *to,
                int *pexitcode,
                apr_file_t *outfile,
                apr_file_t *errfile,
                const char *diff_cmd,
                apr_pool_t *pool)
{
  SVN_ERR(svn_path_cstring_to_utf8(&diff_cmd, diff_cmd, pool));

  return svn_error_trace(svn_io_run_diff2(dir, user_args, num_user_args,
                                          label1, label2,
                                          from, to, pexitcode,
                                          outfile, errfile, diff_cmd,
                                          pool));
}
