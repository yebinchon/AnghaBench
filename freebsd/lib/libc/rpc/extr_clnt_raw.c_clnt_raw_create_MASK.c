#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int32_t ;
struct TYPE_5__ {void* cb_vers; void* cb_prog; int /*<<< orphan*/  cb_rpcvers; } ;
struct rpc_msg {TYPE_1__ rm_call; int /*<<< orphan*/  rm_direction; } ;
struct TYPE_6__ {char* mashl_callmsg; } ;
struct TYPE_7__ {int /*<<< orphan*/  cl_auth; int /*<<< orphan*/  cl_ops; } ;
struct clntraw_private {char* _raw_buf; int /*<<< orphan*/  mcnt; TYPE_2__ u; TYPE_3__ client_object; int /*<<< orphan*/  xdr_stream; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 int MCALL_MSG_SIZE ; 
 int /*<<< orphan*/  RPC_MSG_VERSION ; 
 int UDPMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* __rpc_rawcombuf ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  clntraw_lock ; 
 struct clntraw_private* clntraw_private ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

CLIENT *
FUNC10(rpcprog_t prog, rpcvers_t vers)
{
	struct clntraw_private *clp;
	struct rpc_msg call_msg;
	XDR *xdrs;
	CLIENT	*client;

	FUNC5(&clntraw_lock);
	if ((clp = clntraw_private) == NULL) {
		clp = (struct clntraw_private *)FUNC3(1, sizeof (*clp));
		if (clp == NULL) {
			FUNC6(&clntraw_lock);
			return NULL;
		}
		if (__rpc_rawcombuf == NULL)
			__rpc_rawcombuf =
			    (char *)FUNC3(UDPMSGSIZE, sizeof (char));
		clp->_raw_buf = __rpc_rawcombuf;
		clntraw_private = clp;
	}
	xdrs = &clp->xdr_stream;
	client = &clp->client_object;

	/*
	 * pre-serialize the static part of the call msg and stash it away
	 */
	call_msg.rm_direction = CALL;
	call_msg.rm_call.cb_rpcvers = RPC_MSG_VERSION;
	/* XXX: prog and vers have been long historically :-( */
	call_msg.rm_call.cb_prog = (u_int32_t)prog;
	call_msg.rm_call.cb_vers = (u_int32_t)vers;
	FUNC9(xdrs, clp->u.mashl_callmsg, MCALL_MSG_SIZE, XDR_ENCODE); 
	if (! FUNC8(xdrs, &call_msg))
		FUNC7("clntraw_create - Fatal header serialization error.");
	clp->mcnt = FUNC1(xdrs);
	FUNC0(xdrs);

	/*
	 * Set xdrmem for client/server shared buffer
	 */
	FUNC9(xdrs, clp->_raw_buf, UDPMSGSIZE, XDR_FREE);

	/*
	 * create client handle
	 */
	client->cl_ops = FUNC4();
	client->cl_auth = FUNC2();
	FUNC6(&clntraw_lock);
	return (client);
}