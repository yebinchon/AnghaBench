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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {struct TYPE_3__* parent; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ parent_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(parent_path_t *parent_path,
                               apr_int64_t count_delta,
                               const char *txn_id,
                               trail_t *trail,
                               apr_pool_t *pool)
{
  apr_pool_t *iterpool;
  parent_path_t *pp = parent_path;

  if (count_delta == 0)
    return SVN_NO_ERROR;

  iterpool = FUNC3(pool);

  while (pp)
    {
      FUNC2(iterpool);
      FUNC0(FUNC1(pp->node, count_delta,
                                                      txn_id, trail,
                                                      iterpool));
      pp = pp->parent;
    }
  FUNC4(iterpool);

  return SVN_NO_ERROR;
}