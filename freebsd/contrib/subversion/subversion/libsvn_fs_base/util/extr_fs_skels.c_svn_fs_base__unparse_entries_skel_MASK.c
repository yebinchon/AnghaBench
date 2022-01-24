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
struct TYPE_3__ {void const* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t **skel_p,
                                  apr_hash_t *entries,
                                  apr_pool_t *pool)
{
  svn_skel_t *skel = FUNC4(pool);
  apr_hash_index_t *hi;

  /* Create the skel. */
  if (entries)
    {
      /* Loop over hash entries */
      for (hi = FUNC0(pool, entries); hi; hi = FUNC1(hi))
        {
          const void *key;
          void *val;
          apr_ssize_t klen;
          svn_fs_id_t *value;
          svn_string_t *id_str;
          svn_skel_t *entry_skel = FUNC4(pool);

          FUNC2(hi, &key, &klen, &val);
          value = val;

          /* VALUE */
          id_str = FUNC3(value, pool);
          FUNC6(FUNC5(id_str->data, id_str->len,
                                               pool),
                            entry_skel);

          /* NAME */
          FUNC6(FUNC5(key, klen, pool), entry_skel);

          /* Add entry to the entries skel. */
          FUNC6(entry_skel, skel);
        }
    }

  /* Return the skel. */
  *skel_p = skel;
  return SVN_NO_ERROR;
}