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
typedef  int /*<<< orphan*/  (* svn_hash_diff_func_t ) (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  svn_hash_diff_key_a ; 
 int /*<<< orphan*/  svn_hash_diff_key_b ; 
 int /*<<< orphan*/  svn_hash_diff_key_both ; 

svn_error_t *
FUNC8(apr_hash_t *hash_a,
              apr_hash_t *hash_b,
              svn_hash_diff_func_t diff_func,
              void *diff_func_baton,
              apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  if (hash_a)
    for (hi = FUNC1(pool, hash_a); hi; hi = FUNC3(hi))
      {
        const void *key;
        apr_ssize_t klen;

        FUNC4(hi, &key, &klen, NULL);

        if (hash_b && (FUNC2(hash_b, key, klen)))
          FUNC0((*diff_func)(key, klen, svn_hash_diff_key_both,
                               diff_func_baton));
        else
          FUNC0((*diff_func)(key, klen, svn_hash_diff_key_a,
                               diff_func_baton));
      }

  if (hash_b)
    for (hi = FUNC1(pool, hash_b); hi; hi = FUNC3(hi))
      {
        const void *key;
        apr_ssize_t klen;

        FUNC4(hi, &key, &klen, NULL);

        if (! (hash_a && FUNC2(hash_a, key, klen)))
          FUNC0((*diff_func)(key, klen, svn_hash_diff_key_b,
                               diff_func_baton));
      }

  return SVN_NO_ERROR;
}