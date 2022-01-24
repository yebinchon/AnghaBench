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
struct ypresp_maplist {struct ypmaplist* maps; int /*<<< orphan*/  stat; } ;
struct ypmaplist {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct dom_binding {int /*<<< orphan*/  dom_client; } ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int YPERR_BADARGS ; 
 int YPERR_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  YPPROC_MAPLIST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,struct dom_binding**) ; 
 int /*<<< orphan*/  FUNC3 (struct dom_binding*) ; 
 int /*<<< orphan*/  _yplib_timeout ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,struct ypresp_maplist*,struct timeval) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ xdr_domainname ; 
 scalar_t__ xdr_ypresp_maplist ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(char *indomain, struct ypmaplist **outmaplist)
{
	struct dom_binding *ysd;
	struct ypresp_maplist ypml;
	struct timeval tv;
	int r;

	/* Sanity check */

	if (indomain == NULL || !FUNC7(indomain))
		return (YPERR_BADARGS);

	FUNC0();
again:
	if (FUNC2(indomain, &ysd) != 0) {
		FUNC1();
		return (YPERR_DOMAIN);
	}

	tv.tv_sec = _yplib_timeout;
	tv.tv_usec = 0;

	FUNC4((char *)&ypml, sizeof ypml);

	r = FUNC5(ysd->dom_client, YPPROC_MAPLIST,
		(xdrproc_t)xdr_domainname, &indomain,
		(xdrproc_t)xdr_ypresp_maplist, &ypml,tv);
	if (r != RPC_SUCCESS) {
		FUNC6(ysd->dom_client, "yp_maplist: clnt_call");
		FUNC3(ysd);
		goto again;
	}
	if (!(r = FUNC8(ypml.stat))) {
		*outmaplist = ypml.maps;
	}

	/* NO: xdr_free((xdrproc_t)xdr_ypresp_maplist, &ypml);*/
	FUNC1();
	return (r);
}