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
typedef  char const svn_revnum_t ;
struct TYPE_3__ {void* baseline_info; void* revnum_to_bc; } ;
typedef  TYPE_1__ svn_ra_serf__blncache_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_HASH_KEY_STRING ; 
 scalar_t__ MAX_CACHE_SIZE ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_ra_serf__blncache_t *blncache,
                          const char *baseline_url,
                          svn_revnum_t revision,
                          const char *bc_url,
                          apr_pool_t *scratch_pool)
{
  if (bc_url && FUNC0(revision))
    {
      apr_pool_t *cache_pool = FUNC3(blncache->revnum_to_bc);

      /* If the caches are too big, delete and recreate 'em and move along. */
      if (MAX_CACHE_SIZE < (FUNC1(blncache->baseline_info)
                            + FUNC1(blncache->revnum_to_bc)))
        {
          FUNC7(cache_pool);
          blncache->revnum_to_bc = FUNC2(cache_pool);
          blncache->baseline_info = FUNC2(cache_pool);
        }

      FUNC6(blncache->revnum_to_bc, &revision, sizeof(revision),
                    FUNC4(cache_pool, bc_url));

      if (baseline_url)
        {
          FUNC6(blncache->baseline_info, baseline_url,
                        APR_HASH_KEY_STRING,
                        FUNC5(bc_url, revision, cache_pool));
        }
    }

  return SVN_NO_ERROR;
}