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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_hash_t **result,
                    apr_hash_t *all_tokens,
                    const char *base_url,
                    apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  *result = FUNC1(pool);

  for (hi = FUNC0(pool, all_tokens); hi; hi = FUNC2(hi))
    {
      const char *url = FUNC3(hi);
      const char *token = FUNC4(hi);
      const char *relpath = FUNC6(base_url, url, pool);

      if (relpath)
        {
          FUNC5(*result, relpath, token);
        }
    }

  return SVN_NO_ERROR;
}