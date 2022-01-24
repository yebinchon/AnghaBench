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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  authz_pool ; 
 int /*<<< orphan*/  filtered_pool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void *baton, apr_pool_t *pool)
{
#if APR_HAS_THREADS
  svn_boolean_t multi_threaded = TRUE;
#else
  svn_boolean_t multi_threaded = FALSE;
#endif

  FUNC0(FUNC1(&authz_pool, multi_threaded, pool));
  FUNC0(FUNC1(&filtered_pool, multi_threaded, pool));

  return SVN_NO_ERROR;
}