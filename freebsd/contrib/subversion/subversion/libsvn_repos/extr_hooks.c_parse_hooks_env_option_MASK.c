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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct parse_hooks_env_option_baton {char const* section; int /*<<< orphan*/ * hooks_env; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t
FUNC5(const char *name, const char *value,
                       void *baton, apr_pool_t *pool)
{
  struct parse_hooks_env_option_baton *bo = baton;
  apr_pool_t *result_pool = FUNC1(bo->hooks_env);
  apr_hash_t *hook_env;

  hook_env = FUNC3(bo->hooks_env, bo->section);
  if (hook_env == NULL)
    {
      hook_env = FUNC0(result_pool);
      FUNC4(bo->hooks_env, FUNC2(result_pool, bo->section),
                    hook_env);
    }
  FUNC4(hook_env, FUNC2(result_pool, name),
                FUNC2(result_pool, value));

  return TRUE;
}