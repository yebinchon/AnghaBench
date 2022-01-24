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
typedef  int /*<<< orphan*/  (* xdrproc_t ) (int /*<<< orphan*/ *,void*) ;
struct TYPE_2__ {scalar_t__ gc_svc; int /*<<< orphan*/  gc_seq; } ;
struct rpc_gss_data {scalar_t__ gd_state; TYPE_1__ gd_cred; int /*<<< orphan*/  gd_qop; int /*<<< orphan*/  gd_ctx; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPCSEC_GSS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ rpc_gss_svc_none ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,void*),void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

bool_t
FUNC3(AUTH *auth, XDR *xdrs, xdrproc_t xdr_func, void *xdr_ptr)
{
	struct rpc_gss_data	*gd;

	FUNC1("in rpc_gss_unwrap()");
	
	gd = FUNC0(auth);
	
	if (gd->gd_state != RPCSEC_GSS_ESTABLISHED ||
	    gd->gd_cred.gc_svc == rpc_gss_svc_none) {
		return (xdr_func(xdrs, xdr_ptr));
	}
	return (FUNC2(xdrs, xdr_func, xdr_ptr,
		gd->gd_ctx, gd->gd_qop, gd->gd_cred.gc_svc,
		gd->gd_cred.gc_seq));
}