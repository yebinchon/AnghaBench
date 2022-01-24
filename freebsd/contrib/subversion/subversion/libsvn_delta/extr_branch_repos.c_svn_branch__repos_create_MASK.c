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
struct TYPE_4__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  rev_roots; } ;
typedef  TYPE_1__ svn_branch__repos_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

svn_branch__repos_t *
FUNC2(apr_pool_t *result_pool)
{
  svn_branch__repos_t *repos = FUNC1(result_pool, sizeof(*repos));

  repos->rev_roots = FUNC0(result_pool, 0, sizeof(void *));
  repos->pool = result_pool;
  return repos;
}