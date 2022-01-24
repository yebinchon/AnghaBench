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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct svc_req {int rq_proc; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
#define  NULLPROC 130 
#define  RQUOTAPROC_GETACTIVEQUOTA 129 
#define  RQUOTAPROC_GETQUOTA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ from_inetd ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_void ; 

__attribute__((used)) static void
FUNC4(struct svc_req *request, SVCXPRT *transp)
{

	switch (request->rq_proc) {
	case NULLPROC:
		(void)FUNC2(transp, (xdrproc_t)xdr_void, (char *)NULL);
		break;
	case RQUOTAPROC_GETQUOTA:
	case RQUOTAPROC_GETACTIVEQUOTA:
		FUNC1(request, transp);
		break;
	default:
		FUNC3(transp);
		break;
	}
	if (from_inetd)
		FUNC0(0);
}