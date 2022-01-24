#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ibmad_port {int /*<<< orphan*/ * class_agents; int /*<<< orphan*/  port_id; } ;
struct TYPE_5__ {int error; } ;
typedef  TYPE_1__ ib_rpc_v1_t ;
struct TYPE_6__ {int mgtclass; int rstatus; int dataoffs; int /*<<< orphan*/  datasz; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ ib_rpc_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  IB_DRSMP_STATUS_F ; 
 int IB_MAD_RPC_VERSION1 ; 
 int IB_MAD_RPC_VERSION_MASK ; 
 scalar_t__ IB_MAD_SIZE ; 
 int IB_MAD_STS_REDIRECT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ ibdebug ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmad_port const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmad_port const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *FUNC14(const struct ibmad_port *port, ib_rpc_t * rpc,
	      ib_portid_t * dport, void *payload, void *rcvdata)
{
	int status, len;
	uint8_t sndbuf[1024], rcvbuf[1024], *mad;
	ib_rpc_v1_t *rpcv1 = (ib_rpc_v1_t *)rpc;
	int error = 0;

	if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) == IB_MAD_RPC_VERSION1)
		rpcv1->error = 0;
	do {
		len = 0;
		FUNC8(sndbuf, 0, FUNC12() + IB_MAD_SIZE);

		if ((len = FUNC3(sndbuf, rpc, dport, 0, payload)) < 0)
			return NULL;

		if ((len = FUNC2(port->port_id, sndbuf, rcvbuf,
				      port->class_agents[rpc->mgtclass & 0xff],
				      len, FUNC6(port, rpc->timeout),
				      FUNC5(port), &error)) < 0) {
			if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) ==
			    IB_MAD_RPC_VERSION1)
				rpcv1->error = error;
			FUNC1("_do_madrpc failed; dport (%s)",
			       FUNC9(dport));
			return NULL;
		}

		mad = FUNC11(rcvbuf);
		status = FUNC4(mad, 0, IB_DRSMP_STATUS_F);

		/* check for exact match instead of only the redirect bit;
		 * that way, weird statuses cause an error, too */
		if (status == IB_MAD_STS_REDIRECT) {
			/* update dport for next request and retry */
			/* bail if redirection fails */
			if (FUNC10(dport, mad))
				break;
		} else
			break;
	} while (1);

	if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) == IB_MAD_RPC_VERSION1)
		rpcv1->error = error;
	rpc->rstatus = status;

	if (status != 0) {
		FUNC0("MAD completed with error status 0x%x; dport (%s)",
		     status, FUNC9(dport));
		errno = EIO;
		return NULL;
	}

	if (ibdebug) {
		FUNC1("data offs %d sz %d", rpc->dataoffs, rpc->datasz);
		FUNC13(stderr, "mad data\n", mad + rpc->dataoffs, rpc->datasz);
	}

	if (rcvdata)
		FUNC7(rcvdata, mad + rpc->dataoffs, rpc->datasz);

	return rcvdata;
}