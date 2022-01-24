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
typedef  int /*<<< orphan*/  svn_repos_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * repos; } ;
typedef  TYPE_1__ config_access_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

config_access_t *
FUNC2(svn_repos_t *repos_hint,
                                apr_pool_t *result_pool)
{
  apr_pool_t *pool = FUNC1(result_pool);
  config_access_t *result = FUNC0(pool, sizeof(*result));

  result->repos = repos_hint;
  result->pool = pool;

  return result;
}