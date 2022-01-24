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
typedef  int u_int ;
typedef  int u_char ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_addr*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,int,int,char*) ; 

__attribute__((used)) static int
FUNC8(netdissect_options *ndo,
                           const u_char *pptr, char *buf, u_int buflen)
{
	struct in_addr addr;
	u_int plen;

	FUNC1(pptr[0]);
	plen = pptr[0];   /* get prefix length */

	if ((24+64) > plen)
		return -1;

        plen-=(24+64); /* adjust prefixlen - labellength - RD len*/

	if (32 < plen)
		return -1;

	FUNC6(&addr, 0, sizeof(addr));
	FUNC2(pptr[12], (plen + 7) / 8);
	FUNC5(&addr, &pptr[12], (plen + 7) / 8);
	if (plen % 8) {
		((u_char *)&addr)[(plen + 7) / 8 - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
        /* the label may get offsetted by 4 bits so lets shift it right */
	FUNC7(buf, buflen, "RD: %s, %s/%d, label:%u %s",
                 FUNC3(ndo, pptr+4),
                 FUNC4(ndo, &addr),
                 plen,
                 FUNC0(pptr+1)>>4,
                 ((pptr[3]&1)==0) ? "(BOGUS: Bottom of Stack NOT set!)" : "(bottom)" );

	return 12 + (plen + 7) / 8;

trunc:
	return -2;
}