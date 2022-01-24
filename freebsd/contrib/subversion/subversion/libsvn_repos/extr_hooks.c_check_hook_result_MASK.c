#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  char const* apr_exit_why_e ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_HOOK_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*,int*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,char const*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char *name, const char *cmd, apr_proc_t *cmd_proc,
                  apr_file_t *read_errhandle, apr_pool_t *pool)
{
  svn_error_t *err, *err2;
  svn_stringbuf_t *native_stderr, *failure_message;
  const char *utf8_stderr;
  int exitcode;
  apr_exit_why_e exitwhy;

  err2 = FUNC10(&native_stderr, read_errhandle, pool);

  err = FUNC7(cmd_proc, cmd, &exitcode, &exitwhy, pool);
  if (err)
    {
      FUNC3(err2);
      return FUNC6(err);
    }

  if (FUNC0(exitwhy) && exitcode == 0)
    {
      /* The hook exited cleanly.  However, if we got an error reading
         the hook's stderr, fail the hook anyway, because this might be
         symptomatic of a more important problem. */
      if (err2)
        {
          return FUNC5
            (SVN_ERR_REPOS_HOOK_FAILURE, err2,
             FUNC1("'%s' hook succeeded, but error output could not be read"),
             name);
        }

      return SVN_NO_ERROR;
    }

  /* The hook script failed. */

  /* If we got the stderr output okay, try to translate it into UTF-8.
     Ensure there is something sensible in the UTF-8 string regardless. */
  if (!err2)
    {
      err2 = FUNC11(&utf8_stderr, native_stderr->data, pool);
      if (err2)
        utf8_stderr = FUNC1("[Error output could not be translated from the "
                        "native locale to UTF-8.]");
    }
  else
    {
      utf8_stderr = FUNC1("[Error output could not be read.]");
    }
  /*### It would be nice to include the text of any translation or read
        error in the messages above before we clear it here. */
  FUNC3(err2);

  if (!FUNC0(exitwhy))
    {
      failure_message = FUNC9(pool,
        FUNC1("'%s' hook failed (did not exit cleanly: "
          "apr_exit_why_e was %d, exitcode was %d).  "),
        name, exitwhy, exitcode);
    }
  else
    {
      const char *action;
      if (FUNC2(name, "start-commit") == 0
          || FUNC2(name, "pre-commit") == 0)
        action = FUNC1("Commit");
      else if (FUNC2(name, "pre-revprop-change") == 0)
        action = FUNC1("Revprop change");
      else if (FUNC2(name, "pre-lock") == 0)
        action = FUNC1("Lock");
      else if (FUNC2(name, "pre-unlock") == 0)
        action = FUNC1("Unlock");
      else
        action = NULL;
      if (action == NULL)
        failure_message = FUNC9(
            pool, FUNC1("%s hook failed (exit code %d)"),
            name, exitcode);
      else
        failure_message = FUNC9(
            pool, FUNC1("%s blocked by %s hook (exit code %d)"),
            action, name, exitcode);
    }

  if (utf8_stderr[0])
    {
      FUNC8(failure_message,
                               FUNC1(" with output:\n"));
      FUNC8(failure_message, utf8_stderr);
    }
  else
    {
      FUNC8(failure_message,
                               FUNC1(" with no output."));
    }

  return FUNC4(SVN_ERR_REPOS_HOOK_FAILURE, err,
                          failure_message->data);
}