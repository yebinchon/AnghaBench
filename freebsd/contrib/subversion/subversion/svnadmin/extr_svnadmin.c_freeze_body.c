
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct freeze_baton_t {int status; int args; int command; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_file_open_stderr (int **,int *) ;
 scalar_t__ apr_file_open_stdin (int **,int *) ;
 scalar_t__ apr_file_open_stdout (int **,int *) ;
 int * svn_error_wrap_apr (scalar_t__,char*) ;
 int svn_io_run_cmd (int *,int ,int ,int *,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
freeze_body(void *baton,
            apr_pool_t *pool)
{
  struct freeze_baton_t *b = baton;
  apr_status_t apr_err;
  apr_file_t *infile, *outfile, *errfile;

  apr_err = apr_file_open_stdin(&infile, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Can't open stdin");
  apr_err = apr_file_open_stdout(&outfile, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Can't open stdout");
  apr_err = apr_file_open_stderr(&errfile, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Can't open stderr");

  SVN_ERR(svn_io_run_cmd(((void*)0), b->command, b->args, &b->status,
                         ((void*)0), TRUE,
                         infile, outfile, errfile, pool));

  return SVN_NO_ERROR;
}
