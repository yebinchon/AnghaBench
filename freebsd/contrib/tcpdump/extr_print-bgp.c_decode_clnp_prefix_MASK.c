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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                   const u_char *pptr, char *buf, u_int buflen)
{
        uint8_t addr[19];
	u_int plen;

	FUNC0(pptr[0]);
	plen = pptr[0]; /* get prefix length */

	if (152 < plen)
		return -1;

	FUNC4(&addr, 0, sizeof(addr));
	FUNC1(pptr[4], (plen + 7) / 8);
	FUNC3(&addr, &pptr[4], (plen + 7) / 8);
	if (plen % 8) {
		addr[(plen + 7) / 8 - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
	FUNC5(buf, buflen, "%s/%d",
                 FUNC2(ndo, addr,(plen + 7) / 8),
                 plen);

	return 1 + (plen + 7) / 8;

trunc:
	return -2;
}