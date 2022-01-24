#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void const* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_skel_t **skel_p,
                           const apr_hash_t *proplist,
                           apr_pool_t *pool)
{
  svn_skel_t *skel = FUNC5(pool);
  apr_hash_index_t *hi;

  /* Create the skel. */
  if (proplist)
    {
      /* Loop over hash entries */
      for (hi = FUNC0(pool, (apr_hash_t *)proplist); hi;
           hi = FUNC1(hi))
        {
          const void *key;
          void *val;
          apr_ssize_t klen;
          svn_string_t *value;

          FUNC2(hi, &key, &klen, &val);
          value = val;

          /* VALUE */
          FUNC7(FUNC6(value->data, value->len, pool),
                            skel);

          /* NAME */
          FUNC7(FUNC6(key, klen, pool), skel);
        }
    }

  /* Validate and return the skel. */
  if (! FUNC3(skel))
    return FUNC4("proplist");
  *skel_p = skel;
  return SVN_NO_ERROR;
}