#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {int /*<<< orphan*/  x_op; } ;
struct svc_raw_private {TYPE_1__ xdr_stream; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  TYPE_1__ XDR ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 struct svc_raw_private* svc_raw_private ; 
 int /*<<< orphan*/  svcraw_lock ; 

__attribute__((used)) static bool_t
FUNC3(SVCXPRT *xprt, xdrproc_t xdr_args, void *args_ptr)
{
	struct svc_raw_private *srp;
	XDR *xdrs;

	FUNC0(&svcraw_lock);
	srp = svc_raw_private;
	if (srp == NULL) {
		FUNC1(&svcraw_lock);
		return (FALSE);
	}
	FUNC1(&svcraw_lock);

	xdrs = &srp->xdr_stream;
	xdrs->x_op = XDR_FREE;
	return (*xdr_args)(xdrs, args_ptr);
}