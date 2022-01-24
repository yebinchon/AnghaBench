#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int AOEV1_MAX_CONFSTR_LEN ; 
 int const AOEV1_QUERY_ARG_LEN ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  aoev1_ccmd_str ; 
 scalar_t__ FUNC3 (TYPE_1__*,int const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                  const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint16_t cslen;

	if (len < AOEV1_QUERY_ARG_LEN)
		goto invalid;
	/* Buffer Count */
	FUNC2(*cp, 2);
	FUNC1((ndo, "\n\tBuffer Count: %u", FUNC0(cp)));
	cp += 2;
	/* Firmware Version */
	FUNC2(*cp, 2);
	FUNC1((ndo, ", Firmware Version: %u", FUNC0(cp)));
	cp += 2;
	/* Sector Count */
	FUNC2(*cp, 1);
	FUNC1((ndo, ", Sector Count: %u", *cp));
	cp += 1;
	/* AoE/CCmd */
	FUNC2(*cp, 1);
	FUNC1((ndo, ", AoE: %u, CCmd: %s", (*cp & 0xF0) >> 4,
	          FUNC4(aoev1_ccmd_str, "Unknown (0x02x)", *cp & 0x0F)));
	cp += 1;
	/* Config String Length */
	FUNC2(*cp, 2);
	cslen = FUNC0(cp);
	cp += 2;
	if (cslen > AOEV1_MAX_CONFSTR_LEN || AOEV1_QUERY_ARG_LEN + cslen > len)
		goto invalid;
	/* Config String */
	FUNC2(*cp, cslen);
	if (cslen) {
		FUNC1((ndo, "\n\tConfig String (length %u): ", cslen));
		if (FUNC3(ndo, cp, cslen, ndo->ndo_snapend))
			goto trunc;
	}
	return;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return;
trunc:
	FUNC1((ndo, "%s", tstr));
}