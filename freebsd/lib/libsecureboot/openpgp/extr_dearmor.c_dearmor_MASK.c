#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* data; size_t data_len; } ;
typedef  TYPE_1__ pem_object ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,char**,unsigned char**,long*) ; 
 TYPE_1__* FUNC3 (char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*,char*) ; 

unsigned char *
FUNC6(char *pem, size_t nbytes, size_t *len)
{
#ifdef USE_BEARSSL
	pem_object *po;
	size_t npo;
#else
	BIO *bp;
	char *name = NULL;
	char *header = NULL;
#endif
	unsigned char *data = NULL;
	char *cp;
	char *ep;

	/* we need to remove the Armor tail */
	if ((cp = FUNC5((char *)pem, "\n=")) &&
	    (ep = FUNC5(cp, "\n---"))) {
		FUNC4(cp, ep, nbytes - (size_t)(ep - pem));
		nbytes -= (size_t)(ep - cp);
		pem[nbytes] = '\0';
	}
#ifdef USE_BEARSSL
	/* we also need to remove any headers */
	if ((cp = strstr((char *)pem, "---\n")) &&
	    (ep = strstr(cp, "\n\n"))) {
		cp += 4;
		ep += 2;
		memmove(cp, ep, nbytes - (size_t)(ep - pem));
		nbytes -= (size_t)(ep - cp);
		pem[nbytes] = '\0';
	}
	if ((po = decode_pem(pem, nbytes, &npo))) {
		data = po->data;
		*len = po->data_len;
	}
#else
	if ((bp = FUNC1(pem, (int)nbytes))) {
		long llen = (long)nbytes;

		if (!FUNC2(bp, &name, &header, &data, &llen))
			data = NULL;
		FUNC0(bp);
		*len = (size_t)llen;
	}
#endif
	return (data);
}