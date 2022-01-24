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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdb_cache ; 
 int /*<<< orphan*/  bdb_cache_lock ; 
 int /*<<< orphan*/  bdb_cache_pool ; 
 int /*<<< orphan*/  clear_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, apr_pool_t *pool)
{
  bdb_cache_pool = FUNC4(pool);
  bdb_cache = FUNC1(bdb_cache_pool);

  FUNC0(FUNC3(&bdb_cache_lock, TRUE, bdb_cache_pool));
  FUNC2(bdb_cache_pool, NULL, clear_cache,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}