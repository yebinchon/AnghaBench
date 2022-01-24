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
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_boolean_t
FUNC6(apr_hash_t *a,
                         apr_hash_t *b,
                         apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  /* Quick checks and special cases. */
  if (a == b)
    return TRUE;

  if (a == NULL)
    return FUNC0(b) == 0;
  if (b == NULL)
    return FUNC0(a) == 0;

  if (FUNC0(a) != FUNC0(b))
    return FALSE;

  /* Compare prop by prop. */
  for (hi = FUNC1(pool, a); hi; hi = FUNC3(hi))
    {
      const char *key;
      apr_ssize_t klen;
      svn_string_t *val_a, *val_b;

      FUNC4(hi, (const void **)&key, &klen, (void **)&val_a);
      val_b = FUNC2(b, key, klen);

      if (!val_b || !FUNC5(val_a, val_b))
        return FALSE;
    }

  /* No difference found. */
  return TRUE;
}