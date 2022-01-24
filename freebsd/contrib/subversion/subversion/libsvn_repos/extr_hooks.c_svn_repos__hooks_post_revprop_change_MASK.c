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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_NULL_DEVICE_NAME ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_POST_REVPROP_CHANGE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC11(svn_repos_t *repos,
                                     apr_hash_t *hooks_env,
                                     svn_revnum_t rev,
                                     const char *author,
                                     const char *name,
                                     const svn_string_t *old_value,
                                     char action,
                                     apr_pool_t *pool)
{
  const char *hook = FUNC10(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC2(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC4(hook);
    }
  else if (hook)
    {
      const char *args[7];
      apr_file_t *stdin_handle = NULL;
      char action_string[2];

      /* Pass the old value as stdin to hook */
      if (old_value)
        FUNC0(FUNC3(&stdin_handle, old_value, pool));
      else
        FUNC0(FUNC8(&stdin_handle, SVN_NULL_DEVICE_NAME,
                                 APR_READ, APR_OS_DEFAULT, pool));

      action_string[0] = action;
      action_string[1] = '\0';

      args[0] = hook;
      args[1] = FUNC6(FUNC9(repos, pool), pool);
      args[2] = FUNC1(pool, "%ld", rev);
      args[3] = author ? author : "";
      args[4] = name;
      args[5] = action_string;
      args[6] = NULL;

      FUNC0(FUNC5(NULL, SVN_REPOS__HOOK_POST_REVPROP_CHANGE, hook,
                           args, hooks_env, stdin_handle, pool));

      FUNC0(FUNC7(stdin_handle, pool));
    }

  return SVN_NO_ERROR;
}