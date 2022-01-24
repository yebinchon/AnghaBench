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
struct TYPE_3__ {int /*<<< orphan*/  pool; void* hooks_env_path; int /*<<< orphan*/  conf_path; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_REPOS__CONF_HOOKS_ENV ; 
 void* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC3(svn_repos_t *repos,
                       const char *hooks_env_path,
                       apr_pool_t *scratch_pool)
{
  if (hooks_env_path == NULL)
    repos->hooks_env_path = FUNC2(repos->conf_path,
                                            SVN_REPOS__CONF_HOOKS_ENV,
                                            repos->pool);
  else if (!FUNC1(hooks_env_path))
    repos->hooks_env_path = FUNC2(repos->conf_path,
                                            hooks_env_path,
                                            repos->pool);
  else
    repos->hooks_env_path = FUNC0(repos->pool, hooks_env_path);

  return SVN_NO_ERROR;
}