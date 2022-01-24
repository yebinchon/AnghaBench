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
struct timeval {int dummy; } ;
struct netconfig {int /*<<< orphan*/  nc_device; int /*<<< orphan*/  nc_netid; } ;
struct netbuf {struct netbuf* buf; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
struct TYPE_9__ {int /*<<< orphan*/  cf_stat; } ;
struct TYPE_8__ {int /*<<< orphan*/ * cl_tp; int /*<<< orphan*/ * cl_netid; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  CLSET_PROG ; 
 int /*<<< orphan*/  CLSET_SVC_ADDR ; 
 int /*<<< orphan*/  CLSET_VERS ; 
 int /*<<< orphan*/  RPC_ANYFD ; 
 int /*<<< orphan*/  RPC_UNKNOWNPROTO ; 
 scalar_t__ TRUE ; 
 struct netbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netconfig*,char*,TYPE_1__**,struct timeval*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,struct netconfig const*,struct netbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netbuf*) ; 
 TYPE_2__ rpc_createerr ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

CLIENT *
FUNC6(const char *hostname, rpcprog_t prog, rpcvers_t vers,
    const struct netconfig *nconf, const struct timeval *tp)
{
	struct netbuf *svcaddr;			/* servers address */
	CLIENT *cl = NULL;			/* client handle */

	if (nconf == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
		return (NULL);
	}

	/*
	 * Get the address of the server
	 */
	if ((svcaddr = FUNC2(prog, vers,
			(struct netconfig *)nconf, (char *)hostname,
			&cl, (struct timeval *)tp)) == NULL) {
		/* appropriate error number is set by rpcbind libraries */
		return (NULL);
	}
	if (cl == NULL) {
		cl = FUNC3(RPC_ANYFD, nconf, svcaddr,
					prog, vers, 0, 0);
	} else {
		/* Reuse the CLIENT handle and change the appropriate fields */
		if (FUNC0(cl, CLSET_SVC_ADDR, (void *)svcaddr) == TRUE) {
			if (cl->cl_netid == NULL)
				cl->cl_netid = FUNC5(nconf->nc_netid);
			if (cl->cl_tp == NULL)
				cl->cl_tp = FUNC5(nconf->nc_device);
			(void) FUNC0(cl, CLSET_PROG, (void *)&prog);
			(void) FUNC0(cl, CLSET_VERS, (void *)&vers);
		} else {
			FUNC1(cl);
			cl = FUNC3(RPC_ANYFD, nconf, svcaddr,
					prog, vers, 0, 0);
		}
	}
	FUNC4(svcaddr->buf);
	FUNC4(svcaddr);
	return (cl);
}