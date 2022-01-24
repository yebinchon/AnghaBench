#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  peerportid ;
struct TYPE_8__ {int cnt; int* p; int drdlid; scalar_t__ drslid; } ;
struct TYPE_9__ {TYPE_1__ drpath; scalar_t__ lid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IB_ATTR_PORT_INFO ; 
 int /*<<< orphan*/  IB_PORT_LID_F ; 
 int /*<<< orphan*/  IB_PORT_LOCAL_PORT_F ; 
 int /*<<< orphan*/  buf ; 
 scalar_t__ FUNC1 (TYPE_2__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 

int FUNC5(ib_portid_t* portid, int outport, int* peerlid, int* peerport)
{
	ib_portid_t selfportid = { 0 };
	ib_portid_t peerportid = { 0 };
	int selfport = 0;

	/* set peerportid for peer port */
	FUNC3(&peerportid, portid, sizeof(peerportid));
	peerportid.drpath.cnt = 1;
	peerportid.drpath.p[1] = outport;
	if (FUNC1(&selfportid, &selfport, 0, srcport) < 0)
		FUNC0("failed to resolve self portid");
	peerportid.drpath.drslid = (uint16_t) selfportid.lid;
	peerportid.drpath.drdlid = 0xffff;
	if (!FUNC4(buf, &peerportid, IB_ATTR_PORT_INFO, 0, 0, srcport))
		FUNC0("get peer portinfo failed - unable to configure lossy\n");

	FUNC2(buf, IB_PORT_LID_F, peerlid);
	FUNC2(buf, IB_PORT_LOCAL_PORT_F, peerport);

	return 0;
}