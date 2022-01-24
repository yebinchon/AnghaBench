#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct ip {int dummy; } ;
struct cksum_vec {int const* ptr; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_snapend; scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  IPPROTO_VRRP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int VRRP_AUTH_NONE ; 
 int VRRP_AUTH_SIMPLE ; 
 int VRRP_TYPE_ADVERTISEMENT ; 
 int /*<<< orphan*/  auth2str ; 
 scalar_t__ FUNC4 (TYPE_1__*,int const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cksum_vec*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int const*) ; 
 int FUNC7 (TYPE_1__*,struct ip const*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  type2str ; 

void
FUNC9(netdissect_options *ndo,
           register const u_char *bp, register u_int len,
           register const u_char *bp2, int ttl)
{
	int version, type, auth_type = VRRP_AUTH_NONE; /* keep compiler happy */
	const char *type_s;

	FUNC2(bp[0]);
	version = (bp[0] & 0xf0) >> 4;
	type = bp[0] & 0x0f;
	type_s = FUNC8(type2str, "unknown type (%u)", type);
	FUNC1((ndo, "VRRPv%u, %s", version, type_s));
	if (ttl != 255)
		FUNC1((ndo, ", (ttl %u)", ttl));
	if (version < 2 || version > 3 || type != VRRP_TYPE_ADVERTISEMENT)
		return;
	FUNC2(bp[2]);
	FUNC1((ndo, ", vrid %u, prio %u", bp[1], bp[2]));
	FUNC2(bp[5]);

	if (version == 2) {
		auth_type = bp[4];
		FUNC1((ndo, ", authtype %s", FUNC8(auth2str, NULL, auth_type)));
		FUNC1((ndo, ", intvl %us, length %u", bp[5], len));
	} else { /* version == 3 */
		uint16_t intvl = (bp[4] & 0x0f) << 8 | bp[5];
		FUNC1((ndo, ", intvl %ucs, length %u", intvl, len));
	}

	if (ndo->ndo_vflag) {
		int naddrs = bp[3];
		int i;
		char c;

		if (version == 2 && FUNC3(bp[0], len)) {
			struct cksum_vec vec[1];

			vec[0].ptr = bp;
			vec[0].len = len;
			if (FUNC5(vec, 1))
				FUNC1((ndo, ", (bad vrrp cksum %x)",
					FUNC0(&bp[6])));
		}

		if (version == 3 && FUNC3(bp[0], len)) {
			uint16_t cksum = FUNC7(ndo, (const struct ip *)bp2, bp,
				len, len, IPPROTO_VRRP);
			if (cksum)
				FUNC1((ndo, ", (bad vrrp cksum %x)",
					FUNC0(&bp[6])));
		}

		FUNC1((ndo, ", addrs"));
		if (naddrs > 1)
			FUNC1((ndo, "(%d)", naddrs));
		FUNC1((ndo, ":"));
		c = ' ';
		bp += 8;
		for (i = 0; i < naddrs; i++) {
			FUNC2(bp[3]);
			FUNC1((ndo, "%c%s", c, FUNC6(ndo, bp)));
			c = ',';
			bp += 4;
		}
		if (version == 2 && auth_type == VRRP_AUTH_SIMPLE) { /* simple text password */
			FUNC2(bp[7]);
			FUNC1((ndo, " auth \""));
			if (FUNC4(ndo, bp, 8, ndo->ndo_snapend)) {
				FUNC1((ndo, "\""));
				goto trunc;
			}
			FUNC1((ndo, "\""));
		}
	}
	return;
trunc:
	FUNC1((ndo, "[|vrrp]"));
}