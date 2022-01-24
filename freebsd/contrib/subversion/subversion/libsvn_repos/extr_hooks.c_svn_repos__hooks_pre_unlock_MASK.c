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
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_PRE_UNLOCK ; 
 char* FUNC1 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC7(svn_repos_t *repos,
                            apr_hash_t *hooks_env,
                            const char *path,
                            const char *username,
                            const char *token,
                            svn_boolean_t break_lock,
                            apr_pool_t *pool)
{
  const char *hook = FUNC6(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC1(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC2(hook);
    }
  else if (hook)
    {
      const char *args[7];

      args[0] = hook;
      args[1] = FUNC4(FUNC5(repos, pool), pool);
      args[2] = path;
      args[3] = username ? username : "";
      args[4] = token ? token : "";
      args[5] = break_lock ? "1" : "0";
      args[6] = NULL;

      FUNC0(FUNC3(NULL, SVN_REPOS__HOOK_PRE_UNLOCK, hook, args,
                           hooks_env, NULL, pool));
    }

  return SVN_NO_ERROR;
}