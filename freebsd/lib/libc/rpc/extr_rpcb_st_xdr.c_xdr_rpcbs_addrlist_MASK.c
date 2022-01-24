#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct rpcbs_addrlist {int dummy; } ;
struct TYPE_3__ {struct rpcbs_addrlist* next; int /*<<< orphan*/  netid; int /*<<< orphan*/  failure; int /*<<< orphan*/  success; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; } ;
typedef  TYPE_1__ rpcbs_addrlist ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC5(XDR *xdrs, rpcbs_addrlist *objp)
{
	struct rpcbs_addrlist **pnext;

	    if (!FUNC2(xdrs, &objp->prog)) {
		return (FALSE);
	    }
	    if (!FUNC3(xdrs, &objp->vers)) {
		return (FALSE);
	    }
	    if (!FUNC0(xdrs, &objp->success)) {
		return (FALSE);
	    }
	    if (!FUNC0(xdrs, &objp->failure)) {
		return (FALSE);
	    }
	    if (!FUNC4(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	    }

	    pnext = &objp->next;

	    if (!FUNC1(xdrs, (char **) pnext,
			sizeof (rpcbs_addrlist),
			(xdrproc_t)xdr_rpcbs_addrlist)) {
		return (FALSE);
	    }

	return (TRUE);
}