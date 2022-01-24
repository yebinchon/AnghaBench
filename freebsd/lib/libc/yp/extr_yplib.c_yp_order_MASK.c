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
struct ypresp_order {int ordernum; int /*<<< orphan*/  stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct dom_binding {int /*<<< orphan*/  dom_client; } ;

/* Variables and functions */
 int RPC_PROCUNAVAIL ; 
 int RPC_SUCCESS ; 
 int YPERR_BADARGS ; 
 int YPERR_DOMAIN ; 
 int YPERR_YPERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  YPPROC_ORDER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,struct dom_binding**) ; 
 int /*<<< orphan*/  FUNC3 (struct dom_binding*) ; 
 int /*<<< orphan*/  _yplib_timeout ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,struct ypresp_order*,struct timeval) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ypresp_order*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_order ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(char *indomain, char *inmap, int *outorder)
{
 	struct dom_binding *ysd;
	struct ypresp_order ypro;
	struct ypreq_nokey yprnk;
	struct timeval tv;
	int r;

	/* Sanity check */

	if (indomain == NULL || !FUNC7(indomain) ||
	    inmap == NULL || !FUNC7(inmap))
		return (YPERR_BADARGS);

	FUNC0();
again:
	if (FUNC2(indomain, &ysd) != 0) {
		FUNC1();
		return (YPERR_DOMAIN);
	}

	tv.tv_sec = _yplib_timeout;
	tv.tv_usec = 0;

	yprnk.domain = indomain;
	yprnk.map = inmap;

	FUNC4((char *)(char *)&ypro, sizeof ypro);

	r = FUNC5(ysd->dom_client, YPPROC_ORDER,
		(xdrproc_t)xdr_ypreq_nokey, &yprnk,
		(xdrproc_t)xdr_ypresp_order, &ypro, tv);

	/*
	 * NIS+ in YP compat mode doesn't support the YPPROC_ORDER
	 * procedure.
	 */
	if (r == RPC_PROCUNAVAIL) {
		FUNC1();
		return(YPERR_YPERR);
	}

	if (r != RPC_SUCCESS) {
		FUNC6(ysd->dom_client, "yp_order: clnt_call");
		FUNC3(ysd);
		goto again;
	}

	if (!(r = FUNC9(ypro.stat))) {
		*outorder = ypro.ordernum;
	}

	FUNC8((xdrproc_t)xdr_ypresp_order, &ypro);
	FUNC1();
	return (r);
}