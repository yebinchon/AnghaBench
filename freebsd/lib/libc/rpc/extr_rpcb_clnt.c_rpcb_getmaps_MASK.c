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
typedef  scalar_t__ rpcvers_t ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  int /*<<< orphan*/ * rpcblist_ptr ;
typedef  int /*<<< orphan*/  rpcblist ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_2__ {int /*<<< orphan*/  cf_error; void* cf_stat; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLGET_VERS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_VERS ; 
 scalar_t__ RPCBPROC_DUMP ; 
 scalar_t__ RPCBVERS ; 
 scalar_t__ RPCBVERS4 ; 
 int RPC_PROGUNAVAIL ; 
 int RPC_PROGVERSMISMATCH ; 
 void* RPC_RPCBFAILURE ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,struct netconfig const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ rpc_createerr ; 
 int /*<<< orphan*/  tottimeout ; 
 scalar_t__ xdr_rpcblist_ptr ; 
 scalar_t__ xdr_void ; 

rpcblist *
FUNC5(const struct netconfig *nconf, const char *host)
{
	rpcblist_ptr head = NULL;
	CLIENT *client;
	enum clnt_stat clnt_st;
	rpcvers_t vers = 0;

	client = FUNC4(host, nconf, NULL);
	if (client == NULL) {
		return (head);
	}
	clnt_st = FUNC0(client, (rpcproc_t)RPCBPROC_DUMP,
	    (xdrproc_t) xdr_void, NULL, (xdrproc_t) xdr_rpcblist_ptr,
	    (char *)(void *)&head, tottimeout);
	if (clnt_st == RPC_SUCCESS)
		goto done;

	if ((clnt_st != RPC_PROGVERSMISMATCH) &&
	    (clnt_st != RPC_PROGUNAVAIL)) {
		rpc_createerr.cf_stat = RPC_RPCBFAILURE;
		FUNC3(client, &rpc_createerr.cf_error);
		goto done;
	}

	/* fall back to earlier version */
	FUNC1(client, CLGET_VERS, (char *)(void *)&vers);
	if (vers == RPCBVERS4) {
		vers = RPCBVERS;
		FUNC1(client, CLSET_VERS, (char *)(void *)&vers);
		if (FUNC0(client, (rpcproc_t)RPCBPROC_DUMP,
		    (xdrproc_t) xdr_void, NULL, (xdrproc_t) xdr_rpcblist_ptr,
		    (char *)(void *)&head, tottimeout) == RPC_SUCCESS)
			goto done;
	}
	rpc_createerr.cf_stat = RPC_RPCBFAILURE;
	FUNC3(client, &rpc_createerr.cf_error);

done:
	FUNC2(client);
	return (head);
}