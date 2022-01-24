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
typedef  int /*<<< orphan*/  xi ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  mflags; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IPFW_TGFLAGS_LOCKED ; 
 int /*<<< orphan*/  IPFW_TMFLAGS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(ipfw_obj_header *oh, int lock)
{
	ipfw_xtable_info xi;

	FUNC1(&xi, 0, sizeof(xi));

	xi.mflags |= IPFW_TMFLAGS_LOCK;
	xi.flags |= (lock != 0) ? IPFW_TGFLAGS_LOCKED : 0;

	if (FUNC2(oh, &xi) != 0)
		FUNC0(EX_OSERR, "Table %s failed", lock != 0 ? "lock" : "unlock");
}