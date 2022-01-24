#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct svc_req {int rq_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  usec; int /*<<< orphan*/  sec; } ;
struct TYPE_5__ {TYPE_1__ clock; int /*<<< orphan*/  counter; } ;
typedef  TYPE_2__ spraycumul ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
#define  NULLPROC 131 
#define  SPRAYPROC_CLEAR 130 
#define  SPRAYPROC_GET 129 
#define  SPRAYPROC_SPRAY 128 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,struct timeval*,struct timeval*) ; 
 scalar_t__ xdr_spraycumul ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC6(struct svc_req *rqstp, SVCXPRT *transp)
{
	static spraycumul scum;
	static struct timeval clear, get;

	switch (rqstp->rq_proc) {
	case SPRAYPROC_CLEAR:
		scum.counter = 0;
		(void)FUNC0(&clear, 0);
		/*FALLTHROUGH*/

	case NULLPROC:
		(void)FUNC1(transp, (xdrproc_t)xdr_void, NULL);
		return;

	case SPRAYPROC_SPRAY:
		scum.counter++;
		return;

	case SPRAYPROC_GET:
		(void)FUNC0(&get, 0);
		FUNC5(&get, &clear, &get);
		scum.clock.sec = get.tv_sec;
		scum.clock.usec = get.tv_usec;
		break;

	default:
		FUNC2(transp);
		return;
	}

	if (!FUNC1(transp, (xdrproc_t)xdr_spraycumul, &scum)) {
		FUNC3(transp);
		FUNC4(LOG_WARNING, "bad svc_sendreply");
	}
}