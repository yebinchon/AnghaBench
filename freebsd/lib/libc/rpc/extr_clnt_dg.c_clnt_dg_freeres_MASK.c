#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {int /*<<< orphan*/  x_op; } ;
struct cu_data {size_t cu_fd; TYPE_1__ cu_outxdrs; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  TYPE_1__ XDR ;
struct TYPE_8__ {scalar_t__ cl_private; } ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  clnt_fd_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dg_cv ; 
 scalar_t__* dg_fd_locks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t
FUNC7(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
	struct cu_data *cu = (struct cu_data *)cl->cl_private;
	XDR *xdrs = &(cu->cu_outxdrs);
	bool_t dummy;
	sigset_t mask;
	sigset_t newmask;

	FUNC4(&newmask);
	FUNC6(SIG_SETMASK, &newmask, &mask);
	FUNC2(&clnt_fd_lock);
	while (dg_fd_locks[cu->cu_fd])
		FUNC1(&dg_cv[cu->cu_fd], &clnt_fd_lock);
	xdrs->x_op = XDR_FREE;
	dummy = (*xdr_res)(xdrs, res_ptr);
	FUNC3(&clnt_fd_lock);
	FUNC6(SIG_SETMASK, &mask, NULL);
	FUNC0(&dg_cv[cu->cu_fd]);
	return (dummy);
}