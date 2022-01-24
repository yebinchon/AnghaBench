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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_POST_LOCK ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC11(svn_repos_t *repos,
                           apr_hash_t *hooks_env,
                           const apr_array_header_t *paths,
                           const char *username,
                           apr_pool_t *pool)
{
  const char *hook = FUNC9(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC1(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC3(hook);
    }
  else if (hook)
    {
      const char *args[5];
      apr_file_t *stdin_handle = NULL;
      svn_string_t *paths_str = FUNC10(FUNC5
                                                  (paths, "\n", TRUE, pool),
                                                  pool);

      FUNC0(FUNC2(&stdin_handle, paths_str, pool));

      args[0] = hook;
      args[1] = FUNC6(FUNC8(repos, pool), pool);
      args[2] = username;
      args[3] = NULL;
      args[4] = NULL;

      FUNC0(FUNC4(NULL, SVN_REPOS__HOOK_POST_LOCK, hook, args,
                           hooks_env, stdin_handle, pool));

      FUNC0(FUNC7(stdin_handle, pool));
    }

  return SVN_NO_ERROR;
}