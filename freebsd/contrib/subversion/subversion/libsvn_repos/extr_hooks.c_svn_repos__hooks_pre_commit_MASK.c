#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_access_t ;
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
 int /*<<< orphan*/  SVN_REPOS__HOOK_PRE_COMMIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC12(svn_repos_t *repos,
                            apr_hash_t *hooks_env,
                            const char *txn_name,
                            apr_pool_t *pool)
{
  const char *hook = FUNC11(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = FUNC2(hook, &broken_link, pool)) && broken_link)
    {
      return FUNC3(hook);
    }
  else if (hook)
    {
      const char *args[4];
      svn_fs_access_t *access_ctx;
      apr_file_t *stdin_handle = NULL;

      args[0] = hook;
      args[1] = FUNC6(FUNC10(repos, pool), pool);
      args[2] = txn_name;
      args[3] = NULL;

      FUNC0(FUNC8(&access_ctx, repos->fs));
      if (access_ctx)
        {
          apr_hash_t *lock_tokens = FUNC7(access_ctx);
          if (FUNC1(lock_tokens))  {
            FUNC0(FUNC4(&stdin_handle, lock_tokens, pool));
          }
        }

      if (!stdin_handle)
        FUNC0(FUNC9(&stdin_handle, SVN_NULL_DEVICE_NAME,
                                 APR_READ, APR_OS_DEFAULT, pool));

      FUNC0(FUNC5(NULL, SVN_REPOS__HOOK_PRE_COMMIT, hook, args,
                           hooks_env, stdin_handle, pool));
    }

  return SVN_NO_ERROR;
}