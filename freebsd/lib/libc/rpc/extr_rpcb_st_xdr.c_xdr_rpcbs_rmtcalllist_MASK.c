#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct rpcbs_rmtcalllist {int dummy; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  scalar_t__ rpcproc_t ;
struct TYPE_12__ {int success; int failure; int indirect; int /*<<< orphan*/  netid; scalar_t__ proc; scalar_t__ vers; scalar_t__ prog; struct rpcbs_rmtcalllist* next; } ;
typedef  TYPE_1__ rpcbs_rmtcalllist ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_13__ {scalar_t__ x_op; } ;
typedef  TYPE_2__ XDR ;

/* Variables and functions */
 int BYTES_PER_XDR_UNIT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XDR_DECODE ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC11(XDR *xdrs, rpcbs_rmtcalllist *objp)
{
	int32_t *buf;
	struct rpcbs_rmtcalllist **pnext;

	if (xdrs->x_op == XDR_ENCODE) {
	buf = FUNC4(xdrs, 6 * BYTES_PER_XDR_UNIT);
	if (buf == NULL) {
		if (!FUNC8(xdrs, &objp->prog)) {
			return (FALSE);
		}
		if (!FUNC9(xdrs, &objp->vers)) {
			return (FALSE);
		}
		if (!FUNC7(xdrs, &objp->proc)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->success)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->failure)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->indirect)) {
			return (FALSE);
		}
	} else {
		FUNC3(buf, objp->prog);
		FUNC3(buf, objp->vers);
		FUNC3(buf, objp->proc);
		FUNC2(buf, objp->success);
		FUNC2(buf, objp->failure);
		FUNC2(buf, objp->indirect);
	}
	if (!FUNC10(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	pnext = &objp->next;
	if (!FUNC6(xdrs, (char **) pnext,
			sizeof (rpcbs_rmtcalllist),
			(xdrproc_t)xdr_rpcbs_rmtcalllist)) {
		return (FALSE);
	}
	return (TRUE);
	} else if (xdrs->x_op == XDR_DECODE) {
	buf = FUNC4(xdrs, 6 * BYTES_PER_XDR_UNIT);
	if (buf == NULL) {
		if (!FUNC8(xdrs, &objp->prog)) {
			return (FALSE);
		}
		if (!FUNC9(xdrs, &objp->vers)) {
			return (FALSE);
		}
		if (!FUNC7(xdrs, &objp->proc)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->success)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->failure)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->indirect)) {
			return (FALSE);
		}
	} else {
		objp->prog = (rpcprog_t)FUNC1(buf);
		objp->vers = (rpcvers_t)FUNC1(buf);
		objp->proc = (rpcproc_t)FUNC1(buf);
		objp->success = (int)FUNC0(buf);
		objp->failure = (int)FUNC0(buf);
		objp->indirect = (int)FUNC0(buf);
	}
	if (!FUNC10(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC6(xdrs, (char **) pnext,
			sizeof (rpcbs_rmtcalllist),
			(xdrproc_t)xdr_rpcbs_rmtcalllist)) {
		return (FALSE);
	}
	return (TRUE);
	}
	if (!FUNC8(xdrs, &objp->prog)) {
		return (FALSE);
	}
	if (!FUNC9(xdrs, &objp->vers)) {
		return (FALSE);
	}
	if (!FUNC7(xdrs, &objp->proc)) {
		return (FALSE);
	}
	if (!FUNC5(xdrs, &objp->success)) {
		return (FALSE);
	}
	if (!FUNC5(xdrs, &objp->failure)) {
		return (FALSE);
	}
	if (!FUNC5(xdrs, &objp->indirect)) {
		return (FALSE);
	}
	if (!FUNC10(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC6(xdrs, (char **) pnext,
			sizeof (rpcbs_rmtcalllist),
			(xdrproc_t)xdr_rpcbs_rmtcalllist)) {
		return (FALSE);
	}
	return (TRUE);
}