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
struct ypresp_master {int /*<<< orphan*/  peer; int /*<<< orphan*/  stat; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct dom_binding {int /*<<< orphan*/  dom_client; } ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int YPERR_BADARGS ; 
 int YPERR_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  YPPROC_MASTER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,struct dom_binding**) ; 
 int /*<<< orphan*/  FUNC3 (struct dom_binding*) ; 
 int /*<<< orphan*/  _yplib_timeout ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,struct ypresp_master*,struct timeval) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ypresp_master*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_master ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(char *indomain, char *inmap, char **outname)
{
	struct dom_binding *ysd;
	struct ypresp_master yprm;
	struct ypreq_nokey yprnk;
	struct timeval tv;
	int r;

	/* Sanity check */

	if (indomain == NULL || !FUNC8(indomain) ||
	    inmap == NULL || !FUNC8(inmap))
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

	FUNC4((char *)&yprm, sizeof yprm);

	r = FUNC5(ysd->dom_client, YPPROC_MASTER,
		(xdrproc_t)xdr_ypreq_nokey, &yprnk,
		(xdrproc_t)xdr_ypresp_master, &yprm, tv);
	if (r != RPC_SUCCESS) {
		FUNC6(ysd->dom_client, "yp_master: clnt_call");
		FUNC3(ysd);
		goto again;
	}

	if (!(r = FUNC10(yprm.stat))) {
		*outname = (char *)FUNC7(yprm.peer);
	}

	FUNC9((xdrproc_t)xdr_ypresp_master, &yprm);
	FUNC1();
	return (r);
}