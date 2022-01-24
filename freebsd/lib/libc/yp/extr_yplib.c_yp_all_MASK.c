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
typedef  scalar_t__ u_long ;
struct ypreq_nokey {char* domain; char* map; } ;
struct ypall_callback {scalar_t__ data; int /*<<< orphan*/  foreach; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct dom_binding {struct sockaddr_in dom_server_addr; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int RPC_ANYSOCK ; 
 scalar_t__ RPC_SUCCESS ; 
 int YPERR_BADARGS ; 
 int YPERR_DOMAIN ; 
 int YPERR_PMAP ; 
 int YPERR_RPC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  YPPROC_ALL ; 
 int /*<<< orphan*/  YPPROG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  YPVERS ; 
 scalar_t__ YP_NOMORE ; 
 scalar_t__ FUNC2 (char*,struct dom_binding**) ; 
 int /*<<< orphan*/  FUNC3 (struct dom_binding*) ; 
 int /*<<< orphan*/  _yplib_timeout ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,scalar_t__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_all_seq ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  ypresp_allfn ; 
 void* ypresp_data ; 

int
FUNC12(char *indomain, char *inmap, struct ypall_callback *incallback)
{
	struct ypreq_nokey yprnk;
	struct dom_binding *ysd;
	struct timeval tv;
	struct sockaddr_in clnt_sin;
	CLIENT *clnt;
	u_long status, savstat;
	int clnt_sock;
	int retries = 0;
	/* Sanity check */

	if (indomain == NULL || !FUNC9(indomain) ||
	    inmap == NULL || !FUNC9(inmap))
		return (YPERR_BADARGS);

	FUNC0();
again:
	if (retries > MAX_RETRIES) {
		FUNC1();
		return (YPERR_RPC);
	}

	if (FUNC2(indomain, &ysd) != 0) {
		FUNC1();
		return (YPERR_DOMAIN);
	}

	tv.tv_sec = _yplib_timeout;
	tv.tv_usec = 0;

	/* YPPROC_ALL manufactures its own channel to ypserv using TCP */

	clnt_sock = RPC_ANYSOCK;
	clnt_sin = ysd->dom_server_addr;
	clnt_sin.sin_port = 0;
	clnt = FUNC7(&clnt_sin, YPPROG, YPVERS, &clnt_sock, 0, 0);
	if (clnt == NULL) {
		FUNC1();
		FUNC8("clnttcp_create failed\n");
		return (YPERR_PMAP);
	}

	yprnk.domain = indomain;
	yprnk.map = inmap;
	ypresp_allfn = incallback->foreach;
	ypresp_data = (void *)incallback->data;

	if (FUNC4(clnt, YPPROC_ALL,
		(xdrproc_t)xdr_ypreq_nokey, &yprnk,
		(xdrproc_t)xdr_ypresp_all_seq, &status, tv) != RPC_SUCCESS) {
			FUNC6(clnt, "yp_all: clnt_call");
			FUNC5(clnt);
			FUNC3(ysd);
			retries++;
			goto again;
	}

	FUNC5(clnt);
	savstat = status;
	FUNC10((xdrproc_t)xdr_ypresp_all_seq, &status);	/* not really needed... */
	FUNC1();
	if (savstat != YP_NOMORE)
		return (FUNC11(savstat));
	return (0);
}