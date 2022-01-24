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
struct netconfig {char* nc_netid; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_2__ {char* r_netid; char* r_addr; char* r_owner; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
typedef  TYPE_1__ RPCB ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ RPCBPROC_UNSET ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * nullstring ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  tottimeout ; 
 scalar_t__ xdr_bool ; 
 scalar_t__ xdr_rpcb ; 

bool_t
FUNC5(rpcprog_t program, rpcvers_t version, const struct netconfig *nconf)
{
	CLIENT *client;
	bool_t rslt = FALSE;
	RPCB parms;
	char uidbuf[32];

	client = FUNC3();
	if (! client) {
		return (FALSE);
	}

	parms.r_prog = program;
	parms.r_vers = version;
	if (nconf)
		parms.r_netid = nconf->nc_netid;
	else {
		/*LINTED const castaway*/
		parms.r_netid = (char *) &nullstring[0]; /* unsets  all */
	}
	/*LINTED const castaway*/
	parms.r_addr = (char *) &nullstring[0];
	(void) FUNC4(uidbuf, sizeof uidbuf, "%d", FUNC2());
	parms.r_owner = uidbuf;

	FUNC0(client, (rpcproc_t)RPCBPROC_UNSET, (xdrproc_t) xdr_rpcb,
	    (char *)(void *)&parms, (xdrproc_t) xdr_bool,
	    (char *)(void *)&rslt, tottimeout);

	FUNC1(client);
	return (rslt);
}