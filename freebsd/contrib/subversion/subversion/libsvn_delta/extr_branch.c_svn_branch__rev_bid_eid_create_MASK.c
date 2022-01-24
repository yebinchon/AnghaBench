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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {int eid; int /*<<< orphan*/  rev; int /*<<< orphan*/  bid; } ;
typedef  TYPE_1__ svn_branch__rev_bid_eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

svn_branch__rev_bid_eid_t *
FUNC2(svn_revnum_t rev,
                               const char *branch_id,
                               int eid,
                               apr_pool_t *result_pool)
{
  svn_branch__rev_bid_eid_t *id = FUNC0(result_pool, sizeof(*id));

  id->bid = FUNC1(result_pool, branch_id);
  id->eid = eid;
  id->rev = rev;
  return id;
}