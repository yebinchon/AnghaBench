#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bid; } ;
typedef  TYPE_1__ svn_branch__rev_bid_eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_branch__rev_bid_eid_t *
FUNC2(const svn_branch__rev_bid_eid_t *old_id,
                            apr_pool_t *result_pool)
{
  svn_branch__rev_bid_eid_t *id;

  if (! old_id)
    return NULL;

  id = FUNC0(result_pool, old_id, sizeof(*id));
  id->bid = FUNC1(result_pool, old_id->bid);
  return id;
}