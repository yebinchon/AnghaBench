#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (TYPE_5__*,void*) ;
struct timeval {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/ * oa_base; } ;
struct TYPE_25__ {int /*<<< orphan*/  (* proc ) (TYPE_5__*,void*) ;void* where; } ;
struct TYPE_26__ {TYPE_10__ ar_verf; TYPE_3__ ar_results; } ;
struct rpc_msg {TYPE_4__ acpted_rply; } ;
struct rpc_err {int re_status; } ;
struct TYPE_23__ {int /*<<< orphan*/  rm_xid; } ;
struct TYPE_24__ {int /*<<< orphan*/  mashl_callmsg; TYPE_1__ mashl_rpcmsg; } ;
struct TYPE_27__ {int x_op; } ;
struct clntraw_private {int /*<<< orphan*/  mcnt; TYPE_2__ u; TYPE_5__ xdr_stream; } ;
typedef  int /*<<< orphan*/  rpcproc_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  TYPE_5__ XDR ;
struct TYPE_28__ {int /*<<< orphan*/  cl_auth; } ;
typedef  TYPE_7__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int RPC_AUTHERROR ; 
 int RPC_CANTDECODERES ; 
 int RPC_CANTENCODEARGS ; 
 int RPC_FAILED ; 
 int RPC_SUCCESS ; 
 int XDR_DECODE ; 
 int XDR_ENCODE ; 
 void* XDR_FREE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_10__ _null_auth ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_msg*,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clntraw_lock ; 
 struct clntraw_private* clntraw_private ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,struct rpc_msg*) ; 

__attribute__((used)) static enum clnt_stat 
FUNC15(CLIENT *h, rpcproc_t proc, xdrproc_t xargs, void *argsp,
    xdrproc_t xresults, void *resultsp, struct timeval timeout)
{
	struct clntraw_private *clp = clntraw_private;
	XDR *xdrs = &clp->xdr_stream;
	struct rpc_msg msg;
	enum clnt_stat status;
	struct rpc_err error;

	FUNC8(h != NULL);

	FUNC9(&clntraw_lock);
	if (clp == NULL) {
		FUNC10(&clntraw_lock);
		return (RPC_FAILED);
	}
	FUNC10(&clntraw_lock);

call_again:
	/*
	 * send request
	 */
	xdrs->x_op = XDR_ENCODE;
	FUNC6(xdrs, 0);
	clp->u.mashl_rpcmsg.rm_xid ++ ;
	if ((! FUNC4(xdrs, clp->u.mashl_callmsg, clp->mcnt)) ||
	    (! FUNC5(xdrs, &proc)) ||
	    (! FUNC0(h->cl_auth, xdrs)) ||
	    (! (*xargs)(xdrs, argsp))) {
		return (RPC_CANTENCODEARGS);
	}
	(void)FUNC3(xdrs);  /* called just to cause overhead */

	/*
	 * We have to call server input routine here because this is
	 * all going on in one process. Yuk.
	 */
	FUNC12(FD_SETSIZE);

	/*
	 * get results
	 */
	xdrs->x_op = XDR_DECODE;
	FUNC6(xdrs, 0);
	msg.acpted_rply.ar_verf = _null_auth;
	msg.acpted_rply.ar_results.where = resultsp;
	msg.acpted_rply.ar_results.proc = xresults;
	if (! FUNC14(xdrs, &msg)) {
		/*
		 * It's possible for xdr_replymsg() to fail partway
		 * through its attempt to decode the result from the
		 * server. If this happens, it will leave the reply
		 * structure partially populated with dynamically
		 * allocated memory. (This can happen if someone uses
		 * clntudp_bufcreate() to create a CLIENT handle and
		 * specifies a receive buffer size that is too small.)
		 * This memory must be free()ed to avoid a leak.
		 */
		int op = xdrs->x_op;
		xdrs->x_op = XDR_FREE;
		FUNC14(xdrs, &msg);
		xdrs->x_op = op;
		return (RPC_CANTDECODERES);
	}
	FUNC7(&msg, &error);
	status = error.re_status;

	if (status == RPC_SUCCESS) {
		if (! FUNC2(h->cl_auth, &msg.acpted_rply.ar_verf)) {
			status = RPC_AUTHERROR;
		}
	}  /* end successful completion */
	else {
		if (FUNC1(h->cl_auth, &msg))
			goto call_again;
	}  /* end of unsuccessful completion */

	if (status == RPC_SUCCESS) {
		if (! FUNC2(h->cl_auth, &msg.acpted_rply.ar_verf)) {
			status = RPC_AUTHERROR;
		}
		if (msg.acpted_rply.ar_verf.oa_base != NULL) {
			xdrs->x_op = XDR_FREE;
			(void)FUNC13(xdrs, &(msg.acpted_rply.ar_verf));
		}
	}

	return (status);
}