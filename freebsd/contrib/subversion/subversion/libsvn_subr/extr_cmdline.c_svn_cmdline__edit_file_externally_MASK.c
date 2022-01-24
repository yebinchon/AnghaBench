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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FILEPATH_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_EXTERNAL_PROGRAM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*) ; 

svn_error_t *
FUNC12(const char *path,
                                  const char *editor_cmd,
                                  apr_hash_t *config,
                                  apr_pool_t *pool)
{
  const char *editor, *cmd, *base_dir, *file_name, *base_dir_apr;
  char *old_cwd;
  int sys_err;
  apr_status_t apr_err;

  FUNC6(&base_dir, &file_name, path, pool);

  FUNC0(FUNC5(&editor, editor_cmd, config));

  apr_err = FUNC2(&old_cwd, APR_FILEPATH_NATIVE, pool);
  if (apr_err)
    return FUNC8(apr_err, FUNC1("Can't get working directory"));

  /* APR doesn't like "" directories */
  if (base_dir[0] == '\0')
    base_dir_apr = ".";
  else
    FUNC0(FUNC10(&base_dir_apr, base_dir, pool));

  apr_err = FUNC3(base_dir_apr, pool);
  if (apr_err)
    return FUNC8
      (apr_err, FUNC1("Can't change working directory to '%s'"), base_dir);

  cmd = FUNC4(pool, "%s %s", editor, file_name);
  sys_err = FUNC11(cmd);

  apr_err = FUNC3(old_cwd, pool);
  if (apr_err)
    FUNC9(FUNC8
                      (apr_err, FUNC1("Can't restore working directory")),
                      stderr, TRUE /* fatal */, "svn: ");

  if (sys_err)
    /* Extracting any meaning from sys_err is platform specific, so just
       use the raw value. */
    return FUNC7(SVN_ERR_EXTERNAL_PROGRAM, NULL,
                             FUNC1("system('%s') returned %d"), cmd, sys_err);

  return SVN_NO_ERROR;
}