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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  route_target ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  astostr ;
typedef  int /*<<< orphan*/  asbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
                       const u_char *pptr, char *buf, u_int buflen)
{
	uint8_t route_target[8];
	u_int plen;
	char asbuf[sizeof(astostr)]; /* bgp_vpn_rd_print() overwrites astostr */

	/* NLRI "prefix length" from RFC 2858 Section 4. */
	FUNC1(pptr[0]);
	plen = pptr[0];   /* get prefix length */

	/* NLRI "prefix" (ibid), valid lengths are { 0, 32, 33, ..., 96 } bits.
	 * RFC 4684 Section 4 defines the layout of "origin AS" and "route
	 * target" fields inside the "prefix" depending on its length.
	 */
	if (0 == plen) {
		/* Without "origin AS", without "route target". */
		FUNC8(buf, buflen, "default route target");
		return 1;
	}

	if (32 > plen)
		return -1;

	/* With at least "origin AS", possibly with "route target". */
	FUNC3(pptr + 1);
	FUNC4(ndo, asbuf, sizeof(asbuf), FUNC0(pptr + 1));

        plen-=32; /* adjust prefix length */

	if (64 < plen)
		return -1;

	/* From now on (plen + 7) / 8 evaluates to { 0, 1, 2, ..., 8 }
	 * and gives the number of octets in the variable-length "route
	 * target" field inside this NLRI "prefix". Look for it.
	 */
	FUNC7(&route_target, 0, sizeof(route_target));
	FUNC2(pptr[5], (plen + 7) / 8);
	FUNC6(&route_target, &pptr[5], (plen + 7) / 8);
	/* Which specification says to do this? */
	if (plen % 8) {
		((u_char *)&route_target)[(plen + 7) / 8 - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
	FUNC8(buf, buflen, "origin AS: %s, route target %s",
	    asbuf,
	    FUNC5(ndo, (u_char *)&route_target));

	return 5 + (plen + 7) / 8;

trunc:
	return -2;
}