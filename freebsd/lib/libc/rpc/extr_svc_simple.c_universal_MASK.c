#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xdrproc_t ;
struct svc_req {scalar_t__ rq_proc; scalar_t__ rq_prog; scalar_t__ rq_vers; } ;
struct proglst {scalar_t__ p_prognum; scalar_t__ p_procnum; scalar_t__ p_versnum; char* p_xdrbuf; char* (* p_progname ) (char*) ;scalar_t__ p_outproc; int /*<<< orphan*/  p_inproc; scalar_t__ p_recvsz; int /*<<< orphan*/  p_netid; struct proglst* p_nxt; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  scalar_t__ rpcproc_t ;
struct TYPE_7__ {int /*<<< orphan*/  xp_netid; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ NULLPROC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct proglst* proglst ; 
 int /*<<< orphan*/  proglst_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC10(struct svc_req *rqstp, SVCXPRT *transp)
{
	rpcprog_t prog;
	rpcvers_t vers;
	rpcproc_t proc;
	char *outdata;
	char *xdrbuf;
	struct proglst *pl;

	/*
	 * enforce "procnum 0 is echo" convention
	 */
	if (rqstp->rq_proc == NULLPROC) {
		if (FUNC7(transp, (xdrproc_t) xdr_void, NULL) ==
		    FALSE) {
			FUNC9("svc_sendreply failed");
		}
		return;
	}
	prog = rqstp->rq_prog;
	vers = rqstp->rq_vers;
	proc = rqstp->rq_proc;
	FUNC1(&proglst_lock);
	for (pl = proglst; pl; pl = pl->p_nxt)
		if (pl->p_prognum == prog && pl->p_procnum == proc &&
			pl->p_versnum == vers &&
			(FUNC3(pl->p_netid, transp->xp_netid) == 0)) {
			/* decode arguments into a CLEAN buffer */
			xdrbuf = pl->p_xdrbuf;
			/* Zero the arguments: reqd ! */
			(void) FUNC0(xdrbuf, 0, (size_t)pl->p_recvsz);
			/*
			 * Assuming that sizeof (xdrbuf) would be enough
			 * for the arguments; if not then the program
			 * may bomb. BEWARE!
			 */
			if (!FUNC6(transp, pl->p_inproc, xdrbuf)) {
				FUNC8(transp);
				FUNC2(&proglst_lock);
				return;
			}
			outdata = (*(pl->p_progname))(xdrbuf);
			if (outdata == NULL &&
				pl->p_outproc != (xdrproc_t) xdr_void){
				/* there was an error */
				FUNC2(&proglst_lock);
				return;
			}
			if (!FUNC7(transp, pl->p_outproc, outdata)) {
				FUNC9(
			"rpc: rpc_reg trouble replying to prog %u vers %u",
				(unsigned)prog, (unsigned)vers);
				FUNC2(&proglst_lock);
				return;
			}
			/* free the decoded arguments */
			(void)FUNC5(transp, pl->p_inproc, xdrbuf);
			FUNC2(&proglst_lock);
			return;
		}
	FUNC2(&proglst_lock);
	/* This should never happen */
	FUNC9("rpc: rpc_reg: never registered prog %u vers %u",
		(unsigned)prog, (unsigned)vers);
	return;
}