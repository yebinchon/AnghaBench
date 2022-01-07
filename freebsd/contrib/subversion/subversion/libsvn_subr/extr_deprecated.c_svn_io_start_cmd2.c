
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_io_start_cmd3 (int *,char const*,char const*,char const* const*,int *,int ,int ,int *,int ,int *,int ,int *,int *) ;

svn_error_t *
svn_io_start_cmd2(apr_proc_t *cmd_proc,
                  const char *path,
                  const char *cmd,
                  const char *const *args,
                  svn_boolean_t inherit,
                  svn_boolean_t infile_pipe,
                  apr_file_t *infile,
                  svn_boolean_t outfile_pipe,
                  apr_file_t *outfile,
                  svn_boolean_t errfile_pipe,
                  apr_file_t *errfile,
                  apr_pool_t *pool)
{
  return svn_io_start_cmd3(cmd_proc, path, cmd, args, ((void*)0), inherit,
                           infile_pipe, infile, outfile_pipe, outfile,
                           errfile_pipe, errfile, pool);
}
