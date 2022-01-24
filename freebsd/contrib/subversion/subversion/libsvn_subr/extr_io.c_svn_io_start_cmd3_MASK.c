#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_procattr_t ;
typedef  int /*<<< orphan*/  apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FULL_BLOCK ; 
 int /*<<< orphan*/  APR_NO_PIPE ; 
 int /*<<< orphan*/  APR_PROGRAM ; 
 int /*<<< orphan*/  APR_PROGRAM_PATH ; 
 int /*<<< orphan*/  ERRFILE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,char const**,char const* const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const**,char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_child_process_error ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

svn_error_t *
FUNC16(apr_proc_t *cmd_proc,
                  const char *path,
                  const char *cmd,
                  const char *const *args,
                  const char *const *env,
                  svn_boolean_t inherit,
                  svn_boolean_t infile_pipe,
                  apr_file_t *infile,
                  svn_boolean_t outfile_pipe,
                  apr_file_t *outfile,
                  svn_boolean_t errfile_pipe,
                  apr_file_t *errfile,
                  apr_pool_t *pool)
{
  apr_status_t apr_err;
  apr_procattr_t *cmdproc_attr;
  int num_args;
  const char **args_native;
  const char *cmd_apr;

  FUNC1(!((infile != NULL) && infile_pipe));
  FUNC1(!((outfile != NULL) && outfile_pipe));
  FUNC1(!((errfile != NULL) && errfile_pipe));

  /* Create the process attributes. */
  apr_err = FUNC11(&cmdproc_attr, pool);
  if (apr_err)
    return FUNC15(apr_err,
                              FUNC2("Can't create process '%s' attributes"),
                              cmd);

  /* Make sure we invoke cmd directly, not through a shell. */
  apr_err = FUNC10(cmdproc_attr,
                                     inherit ? APR_PROGRAM_PATH : APR_PROGRAM);
  if (apr_err)
    return FUNC15(apr_err, FUNC2("Can't set process '%s' cmdtype"),
                              cmd);

  /* Set the process's working directory. */
  if (path)
    {
      const char *path_apr;

      /* APR doesn't like our canonical path format for current directory */
      if (path[0] == '\0')
        path = ".";

      FUNC0(FUNC14(&path_apr, path, pool));
      apr_err = FUNC12(cmdproc_attr, path_apr);
      if (apr_err)
        return FUNC15(apr_err,
                                  FUNC2("Can't set process '%s' directory"),
                                  cmd);
    }

  /* Use requested inputs and outputs.

     ### Unfortunately each of these apr functions creates a pipe and then
     overwrites the pipe file descriptor with the descriptor we pass
     in. The pipes can then never be closed. This is an APR bug. */
  if (infile)
    {
      apr_err = FUNC8(cmdproc_attr, infile, NULL);
      if (apr_err)
        return FUNC15(apr_err,
                                  FUNC2("Can't set process '%s' child input"),
                                  cmd);
    }
  if (outfile)
    {
      apr_err = FUNC9(cmdproc_attr, outfile, NULL);
      if (apr_err)
        return FUNC15(apr_err,
                                  FUNC2("Can't set process '%s' child outfile"),
                                  cmd);
    }
  if (errfile)
    {
      apr_err = FUNC6(cmdproc_attr, errfile, NULL);
      if (apr_err)
        return FUNC15(apr_err,
                                  FUNC2("Can't set process '%s' child errfile"),
                                  cmd);
    }

  /* Forward request for pipes to APR. */
  if (infile_pipe || outfile_pipe || errfile_pipe)
    {
      apr_err = FUNC13(cmdproc_attr,
                                    infile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE,
                                    outfile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE,
                                    errfile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE);

      if (apr_err)
        return FUNC15(apr_err,
                                  FUNC2("Can't set process '%s' stdio pipes"),
                                  cmd);
    }

  /* Have the child print any problems executing its program to errfile. */
  apr_err = FUNC4(errfile, ERRFILE_KEY, NULL, pool);
  if (apr_err)
    return FUNC15(apr_err,
                              FUNC2("Can't set process '%s' child errfile for "
                                "error handler"),
                              cmd);
  apr_err = FUNC7(cmdproc_attr,
                                         handle_child_process_error);
  if (apr_err)
    return FUNC15(apr_err,
                              FUNC2("Can't set process '%s' error handler"),
                              cmd);

  /* Convert cmd and args from UTF-8 */
  FUNC0(FUNC14(&cmd_apr, cmd, pool));
  for (num_args = 0; args[num_args]; num_args++)
    ;
  args_native = FUNC3(pool, (num_args + 1) * sizeof(char *));
  args_native[num_args] = NULL;
  while (num_args--)
    {
      /* ### Well, it turns out that on APR on Windows expects all
             program args to be in UTF-8. Callers of svn_io_run_cmd
             should be aware of that. */
      FUNC0(FUNC14(&args_native[num_args],
                                args[num_args], pool));
    }


  /* Start the cmd command. */
  apr_err = FUNC5(cmd_proc, cmd_apr, args_native,
                            inherit ? NULL : env, cmdproc_attr, pool);
  if (apr_err)
    return FUNC15(apr_err, FUNC2("Can't start process '%s'"), cmd);

  return SVN_NO_ERROR;
}