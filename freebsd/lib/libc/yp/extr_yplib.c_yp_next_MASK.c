#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_6__ {int valdat_len; int /*<<< orphan*/  valdat_val; } ;
struct TYPE_5__ {int keydat_len; int /*<<< orphan*/  keydat_val; } ;
struct ypresp_key_val {TYPE_3__ val; TYPE_2__ key; int /*<<< orphan*/  stat; } ;
struct TYPE_4__ {char* keydat_val; int keydat_len; } ;
struct ypreq_key {char* domain; char* map; TYPE_1__ key; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct dom_binding {int /*<<< orphan*/  dom_client; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int RPC_SUCCESS ; 
 int YPERR_BADARGS ; 
 int YPERR_DOMAIN ; 
 int YPERR_RESRC ; 
 int YPERR_RPC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  YPPROC_NEXT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,struct dom_binding**) ; 
 int /*<<< orphan*/  FUNC3 (struct dom_binding*) ; 
 int /*<<< orphan*/  _yplib_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_key*,int /*<<< orphan*/ ,struct ypresp_key_val*,struct timeval) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ypresp_key_val*) ; 
 scalar_t__ xdr_ypreq_key ; 
 scalar_t__ xdr_ypresp_key_val ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(char *indomain, char *inmap, char *inkey, int inkeylen,
    char **outkey, int *outkeylen, char **outval, int *outvallen)
{
	struct ypresp_key_val yprkv;
	struct ypreq_key yprk;
	struct dom_binding *ysd;
	struct timeval tv;
	int r;
	int retries = 0;
	/* Sanity check */

	if (inkey == NULL || !FUNC10(inkey) || inkeylen <= 0 ||
	    inmap == NULL || !FUNC10(inmap) ||
	    indomain == NULL || !FUNC10(indomain))
		return (YPERR_BADARGS);

	*outkey = *outval = NULL;
	*outkeylen = *outvallen = 0;

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

	yprk.domain = indomain;
	yprk.map = inmap;
	yprk.key.keydat_val = inkey;
	yprk.key.keydat_len = inkeylen;
	FUNC5((char *)&yprkv, sizeof yprkv);

	r = FUNC6(ysd->dom_client, YPPROC_NEXT,
		(xdrproc_t)xdr_ypreq_key, &yprk,
		(xdrproc_t)xdr_ypresp_key_val, &yprkv, tv);
	if (r != RPC_SUCCESS) {
		FUNC7(ysd->dom_client, "yp_next: clnt_call");
		FUNC3(ysd);
		retries++;
		goto again;
	}
	if (!(r = FUNC12(yprkv.stat))) {
		*outkeylen = yprkv.key.keydat_len;
		*outkey = (char *)FUNC9(*outkeylen+1);
		if (*outkey == NULL) {
			FUNC3(ysd);
			*outkeylen = 0;
			FUNC11((xdrproc_t)xdr_ypresp_key_val, &yprkv);
			FUNC1();
			return (YPERR_RESRC);
		}
		FUNC4(yprkv.key.keydat_val, *outkey, *outkeylen);
		(*outkey)[*outkeylen] = '\0';
		*outvallen = yprkv.val.valdat_len;
		*outval = (char *)FUNC9(*outvallen+1);
		if (*outval == NULL) {
			FUNC8(*outkey);
			FUNC3(ysd);
			*outkeylen = *outvallen = 0;
			FUNC11((xdrproc_t)xdr_ypresp_key_val, &yprkv);
			FUNC1();
			return (YPERR_RESRC);
		}
		FUNC4(yprkv.val.valdat_val, *outval, *outvallen);
		(*outval)[*outvallen] = '\0';
	}

	FUNC11((xdrproc_t)xdr_ypresp_key_val, &yprkv);
	FUNC1();
	return (r);
}