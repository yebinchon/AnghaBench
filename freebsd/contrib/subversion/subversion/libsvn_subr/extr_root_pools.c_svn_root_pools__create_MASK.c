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
struct TYPE_4__ {int /*<<< orphan*/  unused_pools; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ svn_root_pools__t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(svn_root_pools__t **pools)
{
  /* the collection of root pools must be managed independently from
     any other pool */
  apr_pool_t *pool
    = FUNC1(FUNC5(FALSE));

  /* construct result object */
  svn_root_pools__t *result = FUNC3(pool, sizeof(*result));
  FUNC0(FUNC4(&result->mutex, TRUE, pool));
  result->unused_pools = FUNC2(pool, 16, sizeof(apr_pool_t *));

  /* done */
  *pools = result;

  return SVN_NO_ERROR;
}