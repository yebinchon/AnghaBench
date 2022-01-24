#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ibmad_port {int dummy; } ;
struct TYPE_7__ {scalar_t__ mod; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {unsigned int timeout; int /*<<< orphan*/  dataoffs; int /*<<< orphan*/  datasz; TYPE_1__ attr; int /*<<< orphan*/  method; int /*<<< orphan*/  mgtclass; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ib_rpc_t ;
struct TYPE_9__ {int lid; int qp; scalar_t__ qkey; } ;
typedef  TYPE_3__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IB_DEFAULT_QP1_QKEY ; 
 int /*<<< orphan*/  IB_GSI_PORT_COUNTERS_EXT ; 
 int /*<<< orphan*/  IB_MAD_METHOD_SET ; 
 int /*<<< orphan*/  IB_MAD_SIZE ; 
 int /*<<< orphan*/  IB_PC_DATA_OFFS ; 
 int /*<<< orphan*/  IB_PC_DATA_SZ ; 
 int /*<<< orphan*/  IB_PC_EXT_COUNTER_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_EXT_PORT_SELECT_F ; 
 int /*<<< orphan*/  IB_PERFORMANCE_CLASS ; 
 int /*<<< orphan*/ * FUNC2 (struct ibmad_port const*,TYPE_2__*,TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t *FUNC5(void *rcvbuf, ib_portid_t * dest,
		      int port, unsigned mask, unsigned timeout,
		      const struct ibmad_port * srcport)
{
	ib_rpc_t rpc = { 0 };
	int lid = dest->lid;

	FUNC0("lid %u port %d mask 0x%x", lid, port, mask);

	if (lid == -1) {
		FUNC1("only lid routed is supported");
		return NULL;
	}

	if (!mask)
		mask = ~0;

	rpc.mgtclass = IB_PERFORMANCE_CLASS;
	rpc.method = IB_MAD_METHOD_SET;
	rpc.attr.id = IB_GSI_PORT_COUNTERS_EXT;

	FUNC4(rcvbuf, 0, IB_MAD_SIZE);

	/* Same for attribute IDs */
	FUNC3(rcvbuf, 0, IB_PC_EXT_PORT_SELECT_F, port);
	FUNC3(rcvbuf, 0, IB_PC_EXT_COUNTER_SELECT_F, mask);
	rpc.attr.mod = 0;
	rpc.timeout = timeout;
	rpc.datasz = IB_PC_DATA_SZ;
	rpc.dataoffs = IB_PC_DATA_OFFS;
	if (!dest->qp)
		dest->qp = 1;
	if (!dest->qkey)
		dest->qkey = IB_DEFAULT_QP1_QKEY;

	return FUNC2(srcport, &rpc, dest, rcvbuf, rcvbuf);
}