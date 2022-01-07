
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_exit_why_e ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int svn_io_start_cmd3 (int *,char const*,char const*,char const* const*,int *,int ,int ,int *,int ,int *,int ,int *,int *) ;
 int * svn_io_wait_for_cmd (int *,char const*,int*,int *,int *) ;

svn_error_t *
svn_io_run_cmd(const char *path,
               const char *cmd,
               const char *const *args,
               int *exitcode,
               apr_exit_why_e *exitwhy,
               svn_boolean_t inherit,
               apr_file_t *infile,
               apr_file_t *outfile,
               apr_file_t *errfile,
               apr_pool_t *pool)
{
  apr_proc_t cmd_proc;

  SVN_ERR(svn_io_start_cmd3(&cmd_proc, path, cmd, args, ((void*)0), inherit,
                            FALSE, infile, FALSE, outfile, FALSE, errfile,
                            pool));

  return svn_io_wait_for_cmd(&cmd_proc, cmd, exitcode, exitwhy, pool);
}
