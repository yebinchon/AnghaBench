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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_boolean_t
FUNC6(apr_hash_t *a,
                           apr_hash_t *b,
                           svn_boolean_t compare_values,
                           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  unsigned int a_count, b_count;

  /* An empty hash is logically equal to a NULL,
   * as far as this API is concerned. */
  a_count = (a == NULL) ? 0 : FUNC0(a);
  b_count = (b == NULL) ? 0 : FUNC0(b);

  if (a_count != b_count)
    return TRUE;

  if (a_count == 0)
    return FALSE;

  /* The hashes are both non-NULL, and have the same number of items.
   * We must check that every item of A is present in B. */
  for (hi = FUNC1(pool, a); hi; hi = FUNC3(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *void_a_val;
      svn_string_t *a_val, *b_val;

      FUNC4(hi, &key, &klen, &void_a_val);
      a_val = void_a_val;
      b_val = FUNC2(b, key, klen);

      if (!b_val || (compare_values && !FUNC5(a_val, b_val)))
        return TRUE;
    }

  return FALSE;
}