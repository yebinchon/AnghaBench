#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__HOOK_PRE_LOCK ; 
 char* FUNC1 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t  *
FUNC7(svn_repos_t *repos,
                          apr_hash_t *hooks_env,
                          const char **token,
                          const char *path,
                          const char *username,
                          const char *comment,
                          svn_boolean_t steal_lock,
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
      svn_string_t *buf;


      args[0] = hook;
      args[1] = FUNC4(FUNC5(repos, pool), pool);
      args[2] = path;
      args[3] = username;
      args[4] = comment ? comment : "";
      args[5] = steal_lock ? "1" : "0";
      args[6] = NULL;

      FUNC0(FUNC3(&buf, SVN_REPOS__HOOK_PRE_LOCK, hook, args,
                           hooks_env, NULL, pool));

      if (token)
        /* No validation here; the FS will take care of that. */
        *token = buf->data;

    }
  else if (token)
    *token = "";

  return SVN_NO_ERROR;
}