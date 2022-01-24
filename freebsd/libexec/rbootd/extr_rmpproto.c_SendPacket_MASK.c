#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct hp_hdr {int dummy; } ;
struct TYPE_9__ {void* sxsap; void* dxsap; } ;
struct TYPE_8__ {void* len; int /*<<< orphan*/ * saddr; int /*<<< orphan*/ * daddr; } ;
struct TYPE_10__ {TYPE_2__ hp_llc; TYPE_1__ hp_hdr; } ;
struct TYPE_11__ {int /*<<< orphan*/  tstamp; TYPE_3__ rmp; scalar_t__ rmplen; } ;
typedef  TYPE_4__ RMPCONN ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  DIR_SENT ; 
 int /*<<< orphan*/ * DbgFp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ HPEXT_DXSAP ; 
 scalar_t__ HPEXT_SXSAP ; 
 int /*<<< orphan*/  RMP_ADDRLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(RMPCONN *rconn)
{
	/*
	 *  Set Ethernet Destination address to Source (BPF and the enet
	 *  driver will take care of getting our source address set).
	 */
	FUNC4((char *)&rconn->rmp.hp_hdr.daddr[0],
	        (char *)&rconn->rmp.hp_hdr.saddr[0], RMP_ADDRLEN);
	rconn->rmp.hp_hdr.len = FUNC3(rconn->rmplen - sizeof(struct hp_hdr));

	/*
	 *  Reverse 802.2/HP Extended Source & Destination Access Pts.
	 */
	rconn->rmp.hp_llc.dxsap = FUNC3(HPEXT_SXSAP);
	rconn->rmp.hp_llc.sxsap = FUNC3(HPEXT_DXSAP);

	/*
	 *  Last time this connection was active.
	 */
	(void)FUNC2(&rconn->tstamp, NULL);

	if (DbgFp != NULL)			/* display packet */
		FUNC1(rconn,DIR_SENT);

	/*
	 *  Send RMP packet to remote host.
	 */
	return(FUNC0(rconn));
}