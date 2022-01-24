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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_POST_COMMIT ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC8(svn_repos_t *repos,
                             apr_hash_t *hooks_env,
                             svn_revnum_t rev,
                             const char *txn_name,
                             apr_pool_t *pool)
{
  const char *hook = FUNC7(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC2(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC3(hook);
    }
  else if (hook)
    {
      const char *args[5];

      args[0] = hook;
      args[1] = FUNC5(FUNC6(repos, pool), pool);
      args[2] = FUNC1(pool, "%ld", rev);
      args[3] = txn_name;
      args[4] = NULL;

      FUNC0(FUNC4(NULL, SVN_REPOS__HOOK_POST_COMMIT, hook, args,
                           hooks_env, NULL, pool));
    }

  return SVN_NO_ERROR;
}