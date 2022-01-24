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
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_mergeinfo_catalog_t
FUNC8(svn_mergeinfo_catalog_t mergeinfo_catalog,
                          apr_pool_t *pool)
{
  svn_mergeinfo_t new_mergeinfo_catalog = FUNC1(pool);
  apr_hash_index_t *hi;

  for (hi = FUNC0(pool, mergeinfo_catalog);
       hi;
       hi = FUNC2(hi))
    {
      const char *key = FUNC3(hi);
      svn_mergeinfo_t val = FUNC4(hi);

      FUNC6(new_mergeinfo_catalog, FUNC5(pool, key),
                    FUNC7(val, pool));
    }

  return new_mergeinfo_catalog;
}