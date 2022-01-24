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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int AHCP1_BODY_MIN_LEN ; 
 int FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int) ; 
 int /*<<< orphan*/  ahcp1_msg_str ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
	uint8_t type, mbz;
	uint16_t body_len;

	if (cp + AHCP1_BODY_MIN_LEN > ep)
		goto invalid;
	/* Type */
	FUNC2(*cp, 1);
	type = *cp;
	cp += 1;
	/* MBZ */
	FUNC2(*cp, 1);
	mbz = *cp;
	cp += 1;
	/* Length */
	FUNC2(*cp, 2);
	body_len = FUNC0(cp);
	cp += 2;

	if (ndo->ndo_vflag) {
		FUNC1((ndo, "\n\t%s", FUNC4(ahcp1_msg_str, "Unknown-%u", type)));
		if (mbz != 0)
			FUNC1((ndo, ", MBZ %u", mbz));
		FUNC1((ndo, ", Length %u", body_len));
	}
	if (cp + body_len > ep)
		goto invalid;

	/* Options */
	if (ndo->ndo_vflag >= 2)
		FUNC3(ndo, cp, cp + body_len); /* not ep (ignore extra data) */
	else
		FUNC2(*cp, body_len);
	return;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return;
trunc:
	FUNC1((ndo, "%s", tstr));
}