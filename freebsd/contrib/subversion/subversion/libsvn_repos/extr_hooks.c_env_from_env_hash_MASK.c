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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char** FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

__attribute__((used)) static const char **
FUNC7(apr_hash_t *env_hash,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  const char **env;
  const char **envp;

  if (!env_hash)
    return NULL;

  env = FUNC5(result_pool,
                   sizeof(const char *) * (FUNC0(env_hash) + 1));
  envp = env;
  for (hi = FUNC1(scratch_pool, env_hash); hi; hi = FUNC2(hi))
    {
      *envp = FUNC6(result_pool, "%s=%s",
                           (const char *)FUNC3(hi),
                           (const char *)FUNC4(hi));
      envp++;
    }
  *envp = NULL;

  return env;
}