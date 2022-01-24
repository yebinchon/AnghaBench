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
typedef  void* xdrproc_t ;
typedef  void* u_long ;
struct timeval {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct rmtcallres {void** port_ptr; void* xdr_results; void* results_ptr; } ;
struct rmtcallargs {void* xdr_args; void* args_ptr; void* proc; void* vers; void* prog; } ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  void* caddr_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,struct rmtcallargs*,void*,struct rmtcallres*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PMAPPORT ; 
 scalar_t__ PMAPPROC_CALLIT ; 
 int /*<<< orphan*/  PMAPPROG ; 
 int /*<<< orphan*/  PMAPVERS ; 
 int RPC_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 
 scalar_t__ xdr_rmtcall_args ; 
 scalar_t__ xdr_rmtcallres ; 

enum clnt_stat
FUNC5(struct sockaddr_in *addr, u_long prog, u_long vers, u_long proc,
    xdrproc_t xdrargs, caddr_t argsp, xdrproc_t xdrres, caddr_t resp, 
    struct timeval tout, u_long *port_ptr)
{
	int sock = -1;
	CLIENT *client;
	struct rmtcallargs a;
	struct rmtcallres r;
	enum clnt_stat stat;

	FUNC2(addr != NULL);
	FUNC2(port_ptr != NULL);

	addr->sin_port = FUNC4(PMAPPORT);
	client = FUNC3(addr, PMAPPROG, PMAPVERS, timeout, &sock);
	if (client != NULL) {
		a.prog = prog;
		a.vers = vers;
		a.proc = proc;
		a.args_ptr = argsp;
		a.xdr_args = xdrargs;
		r.port_ptr = port_ptr;
		r.results_ptr = resp;
		r.xdr_results = xdrres;
		stat = FUNC0(client, (rpcproc_t)PMAPPROC_CALLIT,
		    (xdrproc_t)xdr_rmtcall_args, &a, (xdrproc_t)xdr_rmtcallres,
		    &r, tout);
		FUNC1(client);
	} else {
		stat = RPC_FAILED;
	}
	addr->sin_port = 0;
	return (stat);
}