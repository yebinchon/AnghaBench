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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 

int
FUNC7(netdissect_options *ndo,
               const u_char *pptr, u_int itemlen, char *buf, u_int buflen)
{
	struct in_addr addr;
	u_int plen, plenbytes;

	FUNC1(pptr[0]);
	FUNC0(1);
	plen = pptr[0];
	if (32 < plen)
		return -1;
	itemlen -= 1;

	FUNC5(&addr, 0, sizeof(addr));
	plenbytes = (plen + 7) / 8;
	FUNC2(pptr[1], plenbytes);
	FUNC0(plenbytes);
	FUNC4(&addr, &pptr[1], plenbytes);
	if (plen % 8) {
		((u_char *)&addr)[plenbytes - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
	FUNC6(buf, buflen, "%s/%d", FUNC3(ndo, &addr), plen);
	return 1 + plenbytes;

trunc:
	return -2;

badtlv:
	return -3;
}