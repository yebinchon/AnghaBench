#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
typedef  int /*<<< orphan*/  rpcproc_t ;
struct TYPE_2__ {int /*<<< orphan*/  cf_stat; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPCBPROC_UADDR2TADDR ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  RPC_UNKNOWNADDR ; 
 int /*<<< orphan*/  RPC_UNKNOWNPROTO ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct netbuf*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__ rpc_createerr ; 
 int /*<<< orphan*/  tottimeout ; 
 scalar_t__ xdr_netbuf ; 
 scalar_t__ xdr_wrapstring ; 

struct netbuf *
FUNC5(struct netconfig *nconf, char *uaddr)
{
	CLIENT *client;
	struct netbuf *taddr;


	/* parameter checking */
	if (nconf == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
		return (NULL);
	}
	if (uaddr == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
		return (NULL);
	}
	client = FUNC4();
	if (! client) {
		return (NULL);
	}

	taddr = (struct netbuf *)FUNC2(1, sizeof (struct netbuf));
	if (taddr == NULL) {
		FUNC1(client);
		return (NULL);
	}
	if (FUNC0(client, (rpcproc_t)RPCBPROC_UADDR2TADDR,
	    (xdrproc_t) xdr_wrapstring, (char *)(void *)&uaddr,
	    (xdrproc_t) xdr_netbuf, (char *)(void *)taddr,
	    tottimeout) != RPC_SUCCESS) {
		FUNC3(taddr);
		taddr = NULL;
	}
	FUNC1(client);
	return (taddr);
}