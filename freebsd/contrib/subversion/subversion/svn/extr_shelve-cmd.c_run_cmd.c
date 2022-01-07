
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR_EXTERNAL_PROGRAM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_file_open_stdout (int **,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_wrap_apr (scalar_t__,char*) ;
 int * svn_io_run_cmd (int *,char const*,char const* const*,int*,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_cmd(const char *cmd,
        const char *const *args,
        apr_pool_t *scratch_pool)
{
  apr_status_t apr_err;
  apr_file_t *outfile;
  svn_error_t *err;
  int exitcode;

  apr_err = apr_file_open_stdout(&outfile, scratch_pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Can't open stdout");

  err = svn_io_run_cmd(((void*)0) , cmd, args,
                       &exitcode, ((void*)0) ,
                       TRUE ,
                       ((void*)0) , outfile, ((void*)0) ,
                       scratch_pool);
  if (err || exitcode)
    return svn_error_createf(SVN_ERR_EXTERNAL_PROGRAM, err,
                             _("Could not run external command '%s'"), cmd);
  return SVN_NO_ERROR;
}
