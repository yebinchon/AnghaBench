#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* baseline_info; void* revnum_to_bc; } ;
typedef  TYPE_1__ svn_ra_serf__blncache_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_ra_serf__blncache_t **blncache_p,
                             apr_pool_t *pool)
{
  svn_ra_serf__blncache_t *blncache = FUNC1(pool, sizeof(*blncache));
  apr_pool_t *cache_pool;

  /* Create subpool for cached data. It will be cleared if we reach maximum
   * cache size.*/
  cache_pool = FUNC2(pool);
  blncache->revnum_to_bc = FUNC0(cache_pool);
  blncache->baseline_info = FUNC0(cache_pool);

  *blncache_p = blncache;

  return SVN_NO_ERROR;
}