
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_status_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_exit_why_e ;


 scalar_t__ APR_PROC_CHECK_CORE_DUMP (int ) ;
 int APR_PROC_CHECK_EXIT (int ) ;
 scalar_t__ APR_PROC_CHECK_SIGNALED (int ) ;
 int APR_PROC_EXIT ;
 int APR_STATUS_IS_CHILD_DONE (int ) ;
 int APR_WAIT ;
 int SVN_ERR_EXTERNAL_PROGRAM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_proc_wait (int *,int*,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,int,...) ;
 int * svn_error_wrap_apr (int ,int ,char const*) ;

svn_error_t *
svn_io_wait_for_cmd(apr_proc_t *cmd_proc,
                    const char *cmd,
                    int *exitcode,
                    apr_exit_why_e *exitwhy,
                    apr_pool_t *pool)
{
  apr_status_t apr_err;
  apr_exit_why_e exitwhy_val;
  int exitcode_val;


  exitwhy_val = APR_PROC_EXIT;


  apr_err = apr_proc_wait(cmd_proc, &exitcode_val, &exitwhy_val, APR_WAIT);
  if (!APR_STATUS_IS_CHILD_DONE(apr_err))
    return svn_error_wrap_apr(apr_err, _("Error waiting for process '%s'"),
                              cmd);

  if (exitwhy)
    *exitwhy = exitwhy_val;
  else if (APR_PROC_CHECK_SIGNALED(exitwhy_val)
           && APR_PROC_CHECK_CORE_DUMP(exitwhy_val))
    return svn_error_createf
      (SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
       _("Process '%s' failed (signal %d, core dumped)"),
       cmd, exitcode_val);
  else if (APR_PROC_CHECK_SIGNALED(exitwhy_val))
    return svn_error_createf
      (SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
       _("Process '%s' failed (signal %d)"),
       cmd, exitcode_val);
  else if (! APR_PROC_CHECK_EXIT(exitwhy_val))

    return svn_error_createf
      (SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
       _("Process '%s' failed (exitwhy %d, exitcode %d)"),
       cmd, exitwhy_val, exitcode_val);

  if (exitcode)
    *exitcode = exitcode_val;
  else if (exitcode_val != 0)
    return svn_error_createf
      (SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
       _("Process '%s' returned error exitcode %d"), cmd, exitcode_val);

  return SVN_NO_ERROR;
}
