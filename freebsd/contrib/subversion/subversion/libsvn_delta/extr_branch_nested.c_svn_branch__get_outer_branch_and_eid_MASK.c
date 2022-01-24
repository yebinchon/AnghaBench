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
struct TYPE_5__ {int /*<<< orphan*/  txn; int /*<<< orphan*/  bid; } ;
typedef  TYPE_1__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

void
FUNC2(svn_branch__state_t **outer_branch_p,
                                     int *outer_eid_p,
                                     const svn_branch__state_t *branch,
                                     apr_pool_t *scratch_pool)
{
  const char *outer_bid;

  FUNC0(&outer_bid, outer_eid_p, branch->bid, scratch_pool);
  *outer_branch_p = NULL;
  if (outer_bid)
    {
      *outer_branch_p
        = FUNC1(branch->txn, outer_bid,
                                           scratch_pool);
    }
}