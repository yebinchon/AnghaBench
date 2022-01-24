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
typedef  int svn_boolean_t ;
struct svn_config_t {int dummy; } ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FILEPATH_NATIVE ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_MERGE_TOOL_CMD ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_HELPERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ; 
 int /*<<< orphan*/  SVN_ERR_EXTERNAL_PROGRAM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svn_config_t*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct svn_config_t* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char *base_path,
                              const char *their_path,
                              const char *my_path,
                              const char *merged_path,
                              const char *wc_path,
                              apr_hash_t *config,
                              svn_boolean_t *remains_in_conflict,
                              apr_pool_t *pool)
{
  char *merge_tool;
  /* Error if there is no editor specified */
  if (FUNC2(&merge_tool, "SVN_MERGE", pool) != APR_SUCCESS)
    {
      struct svn_config_t *cfg;
      merge_tool = NULL;
      cfg = config ? FUNC10(config, SVN_CONFIG_CATEGORY_CONFIG) : NULL;
      /* apr_env_get wants char **, this wants const char ** */
      FUNC4(cfg, (const char **)&merge_tool,
                     SVN_CONFIG_SECTION_HELPERS,
                     SVN_CONFIG_OPTION_MERGE_TOOL_CMD, NULL);
    }

  if (merge_tool)
    {
      const char *c;

      for (c = merge_tool; *c; c++)
        if (!FUNC5(*c))
          break;

      if (! *c)
        return FUNC7
          (SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, NULL,
           FUNC1("The SVN_MERGE environment variable is empty or "
             "consists solely of whitespace. Expected a shell command.\n"));
    }
  else
      return FUNC7
        (SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, NULL,
         FUNC1("The environment variable SVN_MERGE and the merge-tool-cmd run-time "
           "configuration option were not set.\n"));

  {
    const char *arguments[7] = { 0 };
    char *cwd;
    int exitcode;

    apr_status_t status = FUNC3(&cwd, APR_FILEPATH_NATIVE, pool);
    if (status != 0)
      return FUNC9(status, NULL);

    arguments[0] = merge_tool;
    arguments[1] = base_path;
    arguments[2] = their_path;
    arguments[3] = my_path;
    arguments[4] = merged_path;
    arguments[5] = wc_path;
    arguments[6] = NULL;

    FUNC0(FUNC11(FUNC6(cwd, pool), merge_tool,
                           arguments, &exitcode, NULL, TRUE, NULL, NULL, NULL,
                           pool));
    /* Exit code 0 means the merge was successful.
     * Exit code 1 means the file was left in conflict but it
     * is OK to continue with the merge.
     * Any other exit code means there was a real problem. */
    if (exitcode != 0 && exitcode != 1)
      return FUNC8(SVN_ERR_EXTERNAL_PROGRAM, NULL,
        FUNC1("The external merge tool '%s' exited with exit code %d."),
        merge_tool, exitcode);
    else if (remains_in_conflict)
      *remains_in_conflict = exitcode == 1;
  }
  return SVN_NO_ERROR;
}