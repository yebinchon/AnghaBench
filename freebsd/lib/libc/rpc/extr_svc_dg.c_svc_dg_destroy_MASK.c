#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int maxlen; struct svc_dg_data* buf; } ;
struct svc_dg_data {int su_iosz; TYPE_1__ su_srcaddr; int /*<<< orphan*/  su_xdrs; } ;
struct TYPE_12__ {int maxlen; struct svc_dg_data* buf; } ;
struct TYPE_11__ {int maxlen; struct svc_dg_data* buf; } ;
struct TYPE_13__ {int xp_fd; int /*<<< orphan*/  xp_tp; TYPE_3__ xp_ltaddr; TYPE_2__ xp_rtaddr; } ;
typedef  TYPE_4__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_dg_data*,int) ; 
 struct svc_dg_data* FUNC4 (TYPE_4__*) ; 
 struct svc_dg_data* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC8(SVCXPRT *xprt)
{
	struct svc_dg_data *su = FUNC5(xprt);

	FUNC7(xprt);
	if (xprt->xp_fd != -1)
		(void)FUNC1(xprt->xp_fd);
	FUNC0(&(su->su_xdrs));
	(void) FUNC3(FUNC4(xprt), su->su_iosz);
	if (su->su_srcaddr.buf)
		(void) FUNC3(su->su_srcaddr.buf, su->su_srcaddr.maxlen);
	(void) FUNC3(su, sizeof (*su));
	if (xprt->xp_rtaddr.buf)
		(void) FUNC3(xprt->xp_rtaddr.buf, xprt->xp_rtaddr.maxlen);
	if (xprt->xp_ltaddr.buf)
		(void) FUNC3(xprt->xp_ltaddr.buf, xprt->xp_ltaddr.maxlen);
	FUNC2(xprt->xp_tp);
	FUNC6(xprt);
}