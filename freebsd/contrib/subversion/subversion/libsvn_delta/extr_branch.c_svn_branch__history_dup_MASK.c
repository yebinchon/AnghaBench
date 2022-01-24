#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parents; } ;
typedef  TYPE_1__ svn_branch__history_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_branch__history_t *
FUNC1(const svn_branch__history_t *old,
                        apr_pool_t *result_pool)
{
  svn_branch__history_t *history = NULL;

  if (old)
    {
      history
        = FUNC0(old->parents, result_pool);
    }
  return history;
}