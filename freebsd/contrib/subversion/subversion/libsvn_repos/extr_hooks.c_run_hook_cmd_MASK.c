#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  out; int /*<<< orphan*/  err; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_WRITE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/  SVN_NULL_DEVICE_NAME ; 
 char const* SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,char*,char const*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_string_t **result,
             const char *name,
             const char *cmd,
             const char **args,
             apr_hash_t *hooks_env,
             apr_file_t *stdin_handle,
             apr_pool_t *pool)
{
  apr_file_t *null_handle;
  apr_status_t apr_err;
  svn_error_t *err;
  apr_proc_t cmd_proc = {0};
  apr_pool_t *cmd_pool;
  apr_hash_t *hook_env = NULL;

  if (result)
    {
      null_handle = NULL;
    }
  else
    {
      /* Redirect stdout to the null device */
        apr_err = FUNC2(&null_handle, SVN_NULL_DEVICE_NAME, APR_WRITE,
                                APR_OS_DEFAULT, pool);
        if (apr_err)
          return FUNC7
            (apr_err, FUNC0("Can't create null stdout for hook '%s'"), cmd);
    }

  /* Tie resources allocated for the command to a special pool which we can
   * destroy in order to clean up the stderr pipe opened for the process. */
  cmd_pool = FUNC10(pool);

  /* Check if a custom environment is defined for this hook, or else
   * whether a default environment is defined. */
  if (hooks_env)
    {
      hook_env = FUNC8(hooks_env, name);
      if (hook_env == NULL)
        hook_env = FUNC8(hooks_env,
                                 SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION);
    }

  err = FUNC9(&cmd_proc, ".", cmd, args,
                          FUNC4(hook_env, pool, pool),
                          FALSE, FALSE, stdin_handle, result != NULL,
                          null_handle, TRUE, NULL, cmd_pool);
  if (!err)
    err = FUNC3(name, cmd, &cmd_proc, cmd_proc.err, pool);
  else
    {
      /* The command could not be started for some reason. */
      err = FUNC5(SVN_ERR_REPOS_BAD_ARGS, err,
                              FUNC0("Failed to start '%s' hook"), cmd);
    }

  /* Hooks are fallible, and so hook failure is "expected" to occur at
     times.  When such a failure happens we still want to close the pipe
     and null file */
  if (!err && result)
    {
      svn_stringbuf_t *native_stdout;
      err = FUNC13(&native_stdout, cmd_proc.out, pool);
      if (!err)
        *result = FUNC12(native_stdout);
    }

  /* Close resources allocated by svn_io_start_cmd3(), such as the pipe. */
  FUNC11(cmd_pool);

  /* Close the null handle. */
  if (null_handle)
    {
      apr_err = FUNC1(null_handle);
      if (!err && apr_err)
        return FUNC7(apr_err, FUNC0("Error closing null file"));
    }

  return FUNC6(err);
}