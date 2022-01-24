#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_gss_cred {void* gc_svc; void* gc_proc; int /*<<< orphan*/  gc_handle; int /*<<< orphan*/  gc_seq; int /*<<< orphan*/  gc_version; } ;
typedef  void* enum_t ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(XDR *xdrs, struct rpc_gss_cred *p)
{
	enum_t proc, svc;
	bool_t ret;

	proc = p->gc_proc;
	svc = p->gc_svc;
	ret = (FUNC2(xdrs, &p->gc_version) &&
	    FUNC0(xdrs, &proc) &&
	    FUNC2(xdrs, &p->gc_seq) &&
	    FUNC0(xdrs, &svc) &&
	    FUNC1(xdrs, &p->gc_handle));
	p->gc_proc = proc;
	p->gc_svc = svc;

	return (ret);
}