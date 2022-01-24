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
typedef  scalar_t__ (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {int /*<<< orphan*/  x_op; } ;
struct clntraw_private {TYPE_1__ xdr_stream; } ;
typedef  scalar_t__ bool_t ;
typedef  TYPE_1__ XDR ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_FAILED ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  clntraw_lock ; 
 struct clntraw_private* clntraw_private ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,void*) ; 

__attribute__((used)) static bool_t
FUNC3(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
	struct clntraw_private *clp = clntraw_private;
	XDR *xdrs = &clp->xdr_stream;
	bool_t rval;

	FUNC0(&clntraw_lock);
	if (clp == NULL) {
		rval = (bool_t) RPC_FAILED;
		FUNC1(&clntraw_lock);
		return (rval);
	}
	FUNC1(&clntraw_lock);
	xdrs->x_op = XDR_FREE;
	return ((*xdr_res)(xdrs, res_ptr));
}