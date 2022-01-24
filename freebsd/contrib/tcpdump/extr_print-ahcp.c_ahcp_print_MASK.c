#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int const AHCP1_HEADER_FIX_LEN ; 
 scalar_t__ const AHCP_MAGIC_NUMBER ; 
#define  AHCP_VERSION_1 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo, const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint8_t version;

	FUNC1((ndo, "AHCP"));
	if (len < 2)
		goto invalid;
	/* Magic */
	FUNC2(*cp, 1);
	if (*cp != AHCP_MAGIC_NUMBER)
		goto invalid;
	cp += 1;
	/* Version */
	FUNC2(*cp, 1);
	version = *cp;
	cp += 1;
	switch (version) {
		case AHCP_VERSION_1: {
			FUNC1((ndo, " Version 1"));
			if (len < AHCP1_HEADER_FIX_LEN)
				goto invalid;
			if (!ndo->ndo_vflag) {
				FUNC2(*cp, AHCP1_HEADER_FIX_LEN - 2);
				cp += AHCP1_HEADER_FIX_LEN - 2;
			} else {
				/* Hopcount */
				FUNC2(*cp, 1);
				FUNC1((ndo, "\n\tHopcount %u", *cp));
				cp += 1;
				/* Original Hopcount */
				FUNC2(*cp, 1);
				FUNC1((ndo, ", Original Hopcount %u", *cp));
				cp += 1;
				/* Nonce */
				FUNC2(*cp, 4);
				FUNC1((ndo, ", Nonce 0x%08x", FUNC0(cp)));
				cp += 4;
				/* Source Id */
				FUNC2(*cp, 8);
				FUNC1((ndo, ", Source Id %s", FUNC4(ndo, cp, 0, 8)));
				cp += 8;
				/* Destination Id */
				FUNC2(*cp, 8);
				FUNC1((ndo, ", Destination Id %s", FUNC4(ndo, cp, 0, 8)));
				cp += 8;
			}
			/* Body */
			FUNC3(ndo, cp, ep);
			break;
		}
		default:
			FUNC1((ndo, " Version %u (unknown)", version));
			break;
	}
	return;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return;
trunc:
	FUNC1((ndo, "%s", tstr));
}