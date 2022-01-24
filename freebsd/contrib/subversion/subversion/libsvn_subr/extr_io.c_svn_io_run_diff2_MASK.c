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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_EXTERNAL_PROGRAM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char *dir,
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
  const char **args;
  int i;
  int exitcode;
  int nargs = 4; /* the diff command itself, two paths, plus a trailing NULL */
  apr_pool_t *subpool = FUNC7(pool);

  if (pexitcode == NULL)
    pexitcode = &exitcode;

  if (user_args != NULL)
    nargs += num_user_args;
  else
    nargs += 1; /* -u */

  if (label1 != NULL)
    nargs += 2; /* the -L and the label itself */
  if (label2 != NULL)
    nargs += 2; /* the -L and the label itself */

  args = FUNC3(subpool, nargs * sizeof(char *));

  i = 0;
  args[i++] = diff_cmd;

  if (user_args != NULL)
    {
      int j;
      for (j = 0; j < num_user_args; ++j)
        args[i++] = user_args[j];
    }
  else
    args[i++] = "-u"; /* assume -u if the user didn't give us any args */

  if (label1 != NULL)
    {
      args[i++] = "-L";
      args[i++] = label1;
    }
  if (label2 != NULL)
    {
      args[i++] = "-L";
      args[i++] = label2;
    }

  args[i++] = FUNC4(from, subpool);
  args[i++] = FUNC4(to, subpool);
  args[i++] = NULL;

  FUNC1(i == nargs);

  FUNC0(FUNC6(dir, diff_cmd, args, pexitcode, NULL, TRUE,
                         NULL, outfile, errfile, subpool));

  /* The man page for (GNU) diff describes the return value as:

       "An exit status of 0 means no differences were found, 1 means
        some differences were found, and 2 means trouble."

     A return value of 2 typically occurs when diff cannot read its input
     or write to its output, but in any case we probably ought to return an
     error for anything other than 0 or 1 as the output is likely to be
     corrupt.
   */
  if (*pexitcode != 0 && *pexitcode != 1)
    return FUNC5(SVN_ERR_EXTERNAL_PROGRAM, NULL,
                             FUNC2("'%s' returned %d"),
                             FUNC4(diff_cmd, pool),
                             *pexitcode);

  FUNC8(subpool);

  return SVN_NO_ERROR;
}