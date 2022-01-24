#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  x_op; } ;
struct svc_raw_private {TYPE_1__ xdr_stream; } ;
struct rpc_msg {int dummy; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  TYPE_1__ XDR ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct svc_raw_private* svc_raw_private ; 
 int /*<<< orphan*/  svcraw_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct rpc_msg*) ; 

__attribute__((used)) static bool_t
FUNC4(SVCXPRT *xprt, struct rpc_msg *msg)
{
	struct svc_raw_private *srp;
	XDR *xdrs;

	FUNC1(&svcraw_lock);
	srp = svc_raw_private;
	if (srp == NULL) {
		FUNC2(&svcraw_lock);
		return (FALSE);
	}
	FUNC2(&svcraw_lock);

	xdrs = &srp->xdr_stream;
	xdrs->x_op = XDR_DECODE;
	(void) FUNC0(xdrs, 0);
	if (! FUNC3(xdrs, msg)) {
		return (FALSE);
	}
	return (TRUE);
}