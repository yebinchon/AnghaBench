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
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_3__ {int /*<<< orphan*/  r_owner; int /*<<< orphan*/  r_addr; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
typedef  TYPE_1__ RPCB ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC3(XDR *xdrs, RPCB *objp)
{
	if (!FUNC0(xdrs, &objp->r_prog)) {
		return (FALSE);
	}
	if (!FUNC1(xdrs, &objp->r_vers)) {
		return (FALSE);
	}
	if (!FUNC2(xdrs, &objp->r_netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC2(xdrs, &objp->r_addr, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC2(xdrs, &objp->r_owner, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	return (TRUE);
}