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
struct rpcb_rmtcallres {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  results_val; int /*<<< orphan*/  results_len; } ;
struct r_rpcb_rmtcallres {TYPE_1__ results; int /*<<< orphan*/  (* xdr_res ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(XDR *xdrs, struct rpcb_rmtcallres *p)
{
	bool_t dummy;
	struct r_rpcb_rmtcallres *objp = (struct r_rpcb_rmtcallres *)(void *)p;

	if (!FUNC1(xdrs, &objp->addr, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC2(xdrs, &objp->results.results_len)) {
		return (FALSE);
	}
	dummy = (*(objp->xdr_res))(xdrs, objp->results.results_val);
	return (dummy);
}