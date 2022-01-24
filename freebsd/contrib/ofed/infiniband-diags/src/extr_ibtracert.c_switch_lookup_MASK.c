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
typedef  int /*<<< orphan*/  ib_portid_t ;
struct TYPE_3__ {int* fdb; int linearcap; int linearFDBtop; int enhsp0; void* switchinfo; } ;
typedef  TYPE_1__ Switch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  IB_ATTR_LINEARFORWTBL ; 
 int /*<<< orphan*/  IB_ATTR_SWITCH_INFO ; 
 int /*<<< orphan*/  IB_SW_ENHANCED_PORT0_F ; 
 int /*<<< orphan*/  IB_SW_LINEAR_FDB_CAP_F ; 
 int /*<<< orphan*/  IB_SW_LINEAR_FDB_TOP_F ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC5(Switch * sw, ib_portid_t * portid, int lid)
{
	void *si = sw->switchinfo, *fdb = sw->fdb;

	FUNC2(si, 0, sizeof(sw->switchinfo));
	if (!FUNC4(si, portid, IB_ATTR_SWITCH_INFO, 0, timeout,
			   srcport))
		return -1;

	FUNC1(si, IB_SW_LINEAR_FDB_CAP_F, &sw->linearcap);
	FUNC1(si, IB_SW_LINEAR_FDB_TOP_F, &sw->linearFDBtop);
	FUNC1(si, IB_SW_ENHANCED_PORT0_F, &sw->enhsp0);

	if (lid >= sw->linearcap && lid > sw->linearFDBtop)
		return -1;

	FUNC2(fdb, 0, sizeof(sw->fdb));
	if (!FUNC4(fdb, portid, IB_ATTR_LINEARFORWTBL, lid / 64,
			   timeout, srcport))
		return -1;

	FUNC0("portid %s: forward lid %d to port %d",
	      FUNC3(portid), lid, sw->fdb[lid % 64]);
	return sw->fdb[lid % 64];
}