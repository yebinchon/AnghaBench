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
typedef  unsigned char u_int8_t ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;
typedef  int /*<<< orphan*/  hbuf ;
typedef  int /*<<< orphan*/  ctxt ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct in6_addr*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 char FUNC12 (unsigned char) ; 

__attribute__((used)) static char *
FUNC13(char *name, int nig_oldmcprefix)
{
	char *p;
	char *q;
	MD5_CTX ctxt;
	u_int8_t digest[16];
	u_int8_t c;
	size_t l;
	char hbuf[NI_MAXHOST];
	struct in6_addr in6;
	int valid;

	p = FUNC8(name, '.');
	if (!p)
		p = name + FUNC10(name);
	l = p - name;
	if (l > 63 || l > sizeof(hbuf) - 1)
		return NULL;	/*label too long*/
	FUNC11(hbuf, name, l);
	hbuf[(int)l] = '\0';

	for (q = name; *q; q++) {
		if (FUNC6(*(unsigned char *)q))
			*q = FUNC12(*(unsigned char *)q);
	}

	/* generate 16 bytes of pseudo-random value. */
	FUNC7(&ctxt, 0, sizeof(ctxt));
	FUNC1(&ctxt);
	c = l & 0xff;
	FUNC2(&ctxt, &c, sizeof(c));
	FUNC2(&ctxt, (unsigned char *)name, l);
	FUNC0(digest, &ctxt);

	if (nig_oldmcprefix) {
		/* draft-ietf-ipngwg-icmp-name-lookup */
		valid = FUNC5(AF_INET6, "ff02::2:0000:0000", &in6);
	} else {
		/* RFC 4620 */
		valid = FUNC5(AF_INET6, "ff02::2:ff00:0000", &in6);
	}
	if (valid != 1)
		return NULL;	/*XXX*/

	if (nig_oldmcprefix) {
		/* draft-ietf-ipngwg-icmp-name-lookup */
		FUNC3(digest, &in6.s6_addr[12], 4);
	} else {
		/* RFC 4620 */
		FUNC3(digest, &in6.s6_addr[13], 3);
	}

	if (FUNC4(AF_INET6, &in6, hbuf, sizeof(hbuf)) == NULL)
		return NULL;

	return FUNC9(hbuf);
}