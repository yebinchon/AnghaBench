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
typedef  int /*<<< orphan*/  time_t ;
struct netconfig {int dummy; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_2__ {scalar_t__ cf_stat; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLGET_VERS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_VERS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ RPCBPROC_GETTIME ; 
 scalar_t__ RPCBVERS ; 
 scalar_t__ RPCBVERS4 ; 
 int RPC_PROGUNAVAIL ; 
 int RPC_PROGVERSMISMATCH ; 
 scalar_t__ RPC_SUCCESS ; 
 void* RPC_UNKNOWNPROTO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct netconfig* FUNC4 (void*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,struct netconfig*,int /*<<< orphan*/ *) ; 
 TYPE_1__ rpc_createerr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tottimeout ; 
 scalar_t__ xdr_int ; 
 scalar_t__ xdr_void ; 

bool_t
FUNC8(const char *host, time_t *timep)
{
	CLIENT *client = NULL;
	void *handle;
	struct netconfig *nconf;
	rpcvers_t vers;
	enum clnt_stat st;


	if ((host == NULL) || (host[0] == 0)) {
		FUNC7(timep);
		return (TRUE);
	}

	if ((handle = FUNC5("netpath")) == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
		return (FALSE);
	}
	rpc_createerr.cf_stat = RPC_SUCCESS;
	while (client == NULL) {
		if ((nconf = FUNC4(handle)) == NULL) {
			if (rpc_createerr.cf_stat == RPC_SUCCESS)
				rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
			break;
		}
		client = FUNC6(host, nconf, NULL);
		if (client)
			break;
	}
	FUNC3(handle);
	if (client == (CLIENT *) NULL) {
		return (FALSE);
	}

	st = FUNC0(client, (rpcproc_t)RPCBPROC_GETTIME,
		(xdrproc_t) xdr_void, NULL,
		(xdrproc_t) xdr_int, (char *)(void *)timep, tottimeout);

	if ((st == RPC_PROGVERSMISMATCH) || (st == RPC_PROGUNAVAIL)) {
		FUNC1(client, CLGET_VERS, (char *)(void *)&vers);
		if (vers == RPCBVERS4) {
			/* fall back to earlier version */
			vers = RPCBVERS;
			FUNC1(client, CLSET_VERS, (char *)(void *)&vers);
			st = FUNC0(client, (rpcproc_t)RPCBPROC_GETTIME,
				(xdrproc_t) xdr_void, NULL,
				(xdrproc_t) xdr_int, (char *)(void *)timep,
				tottimeout);
		}
	}
	FUNC2(client);
	return (st == RPC_SUCCESS? TRUE: FALSE);
}