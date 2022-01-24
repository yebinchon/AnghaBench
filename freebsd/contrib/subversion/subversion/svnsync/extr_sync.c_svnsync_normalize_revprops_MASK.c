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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

svn_error_t *
FUNC8(apr_hash_t *rev_props,
                           int *normalized_count,
                           const char *source_prop_encoding,
                           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  *normalized_count = 0;

  for (hi = FUNC1(pool, rev_props);
       hi;
       hi = FUNC2(hi))
    {
      const char *propname = FUNC3(hi);
      const svn_string_t *propval = FUNC4(hi);

      if (FUNC7(propname))
        {
          svn_boolean_t was_normalized;
          FUNC0(FUNC5(&propval, &was_normalized,
                  source_prop_encoding, pool, pool));

          /* Replace the existing prop value. */
          FUNC6(rev_props, propname, propval);

          if (was_normalized)
            (*normalized_count)++; /* Count it. */
        }
    }
  return SVN_NO_ERROR;
}