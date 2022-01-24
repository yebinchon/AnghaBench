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
 int /*<<< orphan*/  SVN_ERR_REPOS_DISABLED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_NULL_DEVICE_NAME ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_PRE_REVPROP_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC13(svn_repos_t *repos,
                                    apr_hash_t *hooks_env,
                                    svn_revnum_t rev,
                                    const char *author,
                                    const char *name,
                                    const svn_string_t *new_value,
                                    char action,
                                    apr_pool_t *pool)
{
  const char *hook = FUNC12(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC3(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC5(hook);
    }
  else if (hook)
    {
      const char *args[7];
      apr_file_t *stdin_handle = NULL;
      char action_string[2];

      /* Pass the new value as stdin to hook */
      if (new_value)
        FUNC0(FUNC4(&stdin_handle, new_value, pool));
      else
        FUNC0(FUNC10(&stdin_handle, SVN_NULL_DEVICE_NAME,
                                 APR_READ, APR_OS_DEFAULT, pool));

      action_string[0] = action;
      action_string[1] = '\0';

      args[0] = hook;
      args[1] = FUNC7(FUNC11(repos, pool), pool);
      args[2] = FUNC2(pool, "%ld", rev);
      args[3] = author ? author : "";
      args[4] = name;
      args[5] = action_string;
      args[6] = NULL;

      FUNC0(FUNC6(NULL, SVN_REPOS__HOOK_PRE_REVPROP_CHANGE, hook,
                           args, hooks_env, stdin_handle, pool));

      FUNC0(FUNC9(stdin_handle, pool));
    }
  else
    {
      /* If the pre- hook doesn't exist at all, then default to
         MASSIVE PARANOIA.  Changing revision properties is a lossy
         operation; so unless the repository admininstrator has
         *deliberately* created the pre-hook, disallow all changes. */
      return
        FUNC8
        (SVN_ERR_REPOS_DISABLED_FEATURE, NULL,
         FUNC1("Repository has not been enabled to accept revision propchanges;\n"
           "ask the administrator to create a pre-revprop-change hook"));
    }

  return SVN_NO_ERROR;
}