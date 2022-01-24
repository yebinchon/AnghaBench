#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netconfig {int /*<<< orphan*/  nc_netid; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  RPC_ANYFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,struct netconfig*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,void (*) (struct svc_req*,int /*<<< orphan*/ *),struct netconfig const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct netconfig const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int,...) ; 

SVCXPRT *
FUNC5(void (*dispatch)(struct svc_req *, SVCXPRT *),
    rpcprog_t prognum, rpcvers_t versnum, const struct netconfig *nconf)
{
	SVCXPRT *xprt;

	if (nconf == NULL) {
		FUNC4(
	"svc_tp_create: invalid netconfig structure for prog %u vers %u",
				(unsigned)prognum, (unsigned)versnum);
		return (NULL);
	}
	xprt = FUNC3(RPC_ANYFD, nconf, NULL, 0, 0);
	if (xprt == NULL) {
		return (NULL);
	}
	/*LINTED const castaway*/
	(void) FUNC1(prognum, versnum, (struct netconfig *) nconf);
	if (FUNC2(xprt, prognum, versnum, dispatch, nconf) == FALSE) {
		FUNC4(
		"svc_tp_create: Could not register prog %u vers %u on %s",
				(unsigned)prognum, (unsigned)versnum,
				nconf->nc_netid);
		FUNC0(xprt);
		return (NULL);
	}
	return (xprt);
}