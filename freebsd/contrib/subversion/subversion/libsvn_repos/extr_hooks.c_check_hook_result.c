
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef char const* apr_exit_why_e ;


 scalar_t__ APR_PROC_CHECK_EXIT (char const*) ;
 int SVN_ERR_REPOS_HOOK_FAILURE ;
 int * SVN_NO_ERROR ;
 char const* _ (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,char const*,char const*) ;
 int * svn_error_trace (int *) ;
 int * svn_io_wait_for_cmd (int *,char const*,int*,char const**,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;
 TYPE_1__* svn_stringbuf_createf (int *,char const*,char const*,...) ;
 int * svn_stringbuf_from_aprfile (TYPE_1__**,int *,int *) ;
 int * svn_utf_cstring_to_utf8 (char const**,int ,int *) ;

__attribute__((used)) static svn_error_t *
check_hook_result(const char *name, const char *cmd, apr_proc_t *cmd_proc,
                  apr_file_t *read_errhandle, apr_pool_t *pool)
{
  svn_error_t *err, *err2;
  svn_stringbuf_t *native_stderr, *failure_message;
  const char *utf8_stderr;
  int exitcode;
  apr_exit_why_e exitwhy;

  err2 = svn_stringbuf_from_aprfile(&native_stderr, read_errhandle, pool);

  err = svn_io_wait_for_cmd(cmd_proc, cmd, &exitcode, &exitwhy, pool);
  if (err)
    {
      svn_error_clear(err2);
      return svn_error_trace(err);
    }

  if (APR_PROC_CHECK_EXIT(exitwhy) && exitcode == 0)
    {



      if (err2)
        {
          return svn_error_createf
            (SVN_ERR_REPOS_HOOK_FAILURE, err2,
             _("'%s' hook succeeded, but error output could not be read"),
             name);
        }

      return SVN_NO_ERROR;
    }





  if (!err2)
    {
      err2 = svn_utf_cstring_to_utf8(&utf8_stderr, native_stderr->data, pool);
      if (err2)
        utf8_stderr = _("[Error output could not be translated from the "
                        "native locale to UTF-8.]");
    }
  else
    {
      utf8_stderr = _("[Error output could not be read.]");
    }


  svn_error_clear(err2);

  if (!APR_PROC_CHECK_EXIT(exitwhy))
    {
      failure_message = svn_stringbuf_createf(pool,
        _("'%s' hook failed (did not exit cleanly: "
          "apr_exit_why_e was %d, exitcode was %d).  "),
        name, exitwhy, exitcode);
    }
  else
    {
      const char *action;
      if (strcmp(name, "start-commit") == 0
          || strcmp(name, "pre-commit") == 0)
        action = _("Commit");
      else if (strcmp(name, "pre-revprop-change") == 0)
        action = _("Revprop change");
      else if (strcmp(name, "pre-lock") == 0)
        action = _("Lock");
      else if (strcmp(name, "pre-unlock") == 0)
        action = _("Unlock");
      else
        action = ((void*)0);
      if (action == ((void*)0))
        failure_message = svn_stringbuf_createf(
            pool, _("%s hook failed (exit code %d)"),
            name, exitcode);
      else
        failure_message = svn_stringbuf_createf(
            pool, _("%s blocked by %s hook (exit code %d)"),
            action, name, exitcode);
    }

  if (utf8_stderr[0])
    {
      svn_stringbuf_appendcstr(failure_message,
                               _(" with output:\n"));
      svn_stringbuf_appendcstr(failure_message, utf8_stderr);
    }
  else
    {
      svn_stringbuf_appendcstr(failure_message,
                               _(" with no output."));
    }

  return svn_error_create(SVN_ERR_REPOS_HOOK_FAILURE, err,
                          failure_message->data);
}
