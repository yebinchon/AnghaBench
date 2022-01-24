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
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;
struct rpcb_rmtcallargs {int dummy; } ;
struct TYPE_2__ {scalar_t__ args_len; int /*<<< orphan*/  args_val; } ;
struct r_rpcb_rmtcallargs {TYPE_1__ args; int /*<<< orphan*/  (* xdr_args ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  proc; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int BYTES_PER_XDR_UNIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 

bool_t
FUNC9(XDR *xdrs, struct rpcb_rmtcallargs *p)
{
	struct r_rpcb_rmtcallargs *objp =
	    (struct r_rpcb_rmtcallargs *)(void *)p;
	u_int lenposition, argposition, position;
	int32_t *buf;

	buf = FUNC2(xdrs, 3 * BYTES_PER_XDR_UNIT);
	if (buf == NULL) {
		if (!FUNC6(xdrs, &objp->prog)) {
			return (FALSE);
		}
		if (!FUNC7(xdrs, &objp->vers)) {
			return (FALSE);
		}
		if (!FUNC5(xdrs, &objp->proc)) {
			return (FALSE);
		}
	} else {
		FUNC0(buf, objp->prog);
		FUNC0(buf, objp->vers);
		FUNC0(buf, objp->proc);
	}

	/*
	 * All the jugglery for just getting the size of the arguments
	 */
	lenposition = FUNC1(xdrs);
	if (! FUNC8(xdrs, &(objp->args.args_len))) {
		return (FALSE);
	}
	argposition = FUNC1(xdrs);
	if (! (*objp->xdr_args)(xdrs, objp->args.args_val)) {
		return (FALSE);
	}
	position = FUNC1(xdrs);
	objp->args.args_len = (u_int)((u_long)position - (u_long)argposition);
	FUNC3(xdrs, lenposition);
	if (! FUNC8(xdrs, &(objp->args.args_len))) {
		return (FALSE);
	}
	FUNC3(xdrs, position);
	return (TRUE);
}