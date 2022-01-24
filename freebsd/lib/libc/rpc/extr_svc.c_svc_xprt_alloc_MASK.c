#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * svc_ah_ops; } ;
struct TYPE_9__ {TYPE_1__ xp_auth; struct TYPE_9__* xp_p3; } ;
typedef  TYPE_2__ SVCXPRT_EXT ;
typedef  TYPE_2__ SVCXPRT ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  svc_auth_null_ops ; 

SVCXPRT *
FUNC3(void)
{
	SVCXPRT *xprt;
	SVCXPRT_EXT *ext;

	xprt = FUNC0(sizeof(SVCXPRT));
	if (xprt == NULL)
		return (NULL);
	FUNC2(xprt, 0, sizeof(SVCXPRT));
	ext = FUNC0(sizeof(SVCXPRT_EXT));
	if (ext == NULL) {
		FUNC1(xprt, sizeof(SVCXPRT));
		return (NULL);
	}
	FUNC2(ext, 0, sizeof(SVCXPRT_EXT));
	xprt->xp_p3 = ext;
	ext->xp_auth.svc_ah_ops = &svc_auth_null_ops;

	return (xprt);
}