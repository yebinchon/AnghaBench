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
typedef  int /*<<< orphan*/  uint8_t ;
struct ibmad_port {int /*<<< orphan*/ * class_agents; int /*<<< orphan*/  port_id; } ;
struct TYPE_4__ {int dataoffs; int mgtclass; int /*<<< orphan*/  timeout; int /*<<< orphan*/  datasz; } ;
typedef  TYPE_1__ ib_rpc_t ;
typedef  int /*<<< orphan*/  ib_rmpp_hdr_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ IB_MAD_SIZE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ ibdebug ; 
 scalar_t__ FUNC2 (void*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmad_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

int FUNC10(ib_rpc_t * rpc, ib_portid_t * dport, ib_rmpp_hdr_t * rmpp,
		 void *data, struct ibmad_port *srcport)
{
	uint8_t pktbuf[1024];
	void *umad = pktbuf;

	FUNC4(pktbuf, 0, FUNC8() + IB_MAD_SIZE);

	FUNC0("rmpp %p data %p", rmpp, data);

	if (FUNC2(umad, rpc, dport, rmpp, data) < 0)
		return -1;

	if (ibdebug) {
		FUNC1("data offs %d sz %d", rpc->dataoffs, rpc->datasz);
		FUNC9(stderr, "mad send data\n",
		      (char *)FUNC6(umad) + rpc->dataoffs, rpc->datasz);
	}

	if (FUNC7(srcport->port_id, srcport->class_agents[rpc->mgtclass & 0xff],
		      umad, IB_MAD_SIZE, FUNC3(srcport, rpc->timeout),
		      0) < 0) {
		FUNC1("send failed; %s", FUNC5(errno));
		return -1;
	}

	return 0;
}