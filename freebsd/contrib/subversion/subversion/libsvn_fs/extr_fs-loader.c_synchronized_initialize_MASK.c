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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ base_defn ; 
 int /*<<< orphan*/  common_pool ; 
 int /*<<< orphan*/  common_pool_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uninit ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, apr_pool_t *pool)
{
  common_pool = FUNC3(pool);
  base_defn.next = NULL;
  FUNC0(FUNC2(&common_pool_lock, TRUE, common_pool));

  /* ### This won't work if POOL is NULL and libsvn_fs is loaded as a DSO
     ### (via libsvn_ra_local say) since the global common_pool will live
     ### longer than the DSO, which gets unloaded when the pool used to
     ### load it is cleared, and so when the handler runs it will refer to
     ### a function that no longer exists.  libsvn_ra_local attempts to
     ### work around this by explicitly calling svn_fs_initialize. */
  FUNC1(common_pool, NULL, uninit, apr_pool_cleanup_null);
  return SVN_NO_ERROR;
}