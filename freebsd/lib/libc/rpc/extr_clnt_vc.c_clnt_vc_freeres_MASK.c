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
struct ct_data {size_t ct_fd; TYPE_1__ ct_xdrs; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  TYPE_1__ XDR ;
struct TYPE_8__ {scalar_t__ cl_private; } ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clnt_fd_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vc_cv ; 
 scalar_t__* vc_fd_locks ; 

__attribute__((used)) static bool_t
FUNC8(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
	struct ct_data *ct;
	XDR *xdrs;
	bool_t dummy;
	sigset_t mask;
	sigset_t newmask;

	FUNC0(cl != NULL);

	ct = (struct ct_data *)cl->cl_private;
	xdrs = &(ct->ct_xdrs);

	FUNC5(&newmask);
	FUNC7(SIG_SETMASK, &newmask, &mask);
	FUNC3(&clnt_fd_lock);
	while (vc_fd_locks[ct->ct_fd])
		FUNC2(&vc_cv[ct->ct_fd], &clnt_fd_lock);
	xdrs->x_op = XDR_FREE;
	dummy = (*xdr_res)(xdrs, res_ptr);
	FUNC4(&clnt_fd_lock);
	FUNC7(SIG_SETMASK, &(mask), NULL);
	FUNC1(&vc_cv[ct->ct_fd]);

	return dummy;
}