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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const,scalar_t__ const) ; 
#define  OFPQT_MIN_RATE 129 
#define  OFPQT_NONE 128 
 scalar_t__ OF_QUEUE_PROP_HEADER_LEN ; 
 scalar_t__ OF_QUEUE_PROP_MIN_RATE_LEN ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  ofpqt_str ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC4(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, u_int len)
{
	const u_char *cp0 = cp;
	const u_int len0 = len;
	uint16_t property, plen, rate;

	while (len) {
		u_char plen_bogus = 0, skip = 0;

		if (len < OF_QUEUE_PROP_HEADER_LEN)
			goto invalid;
		/* property */
		FUNC2(*cp, 2);
		property = FUNC0(cp);
		cp += 2;
		FUNC1((ndo, "\n\t   property %s", FUNC3(ofpqt_str, "invalid (0x%04x)", property)));
		/* len */
		FUNC2(*cp, 2);
		plen = FUNC0(cp);
		cp += 2;
		FUNC1((ndo, ", len %u", plen));
		if (plen < OF_QUEUE_PROP_HEADER_LEN || plen > len)
			goto invalid;
		/* pad */
		FUNC2(*cp, 4);
		cp += 4;
		/* property-specific constraints and decoding */
		switch (property) {
		case OFPQT_NONE:
			plen_bogus = plen != OF_QUEUE_PROP_HEADER_LEN;
			break;
		case OFPQT_MIN_RATE:
			plen_bogus = plen != OF_QUEUE_PROP_MIN_RATE_LEN;
			break;
		default:
			skip = 1;
		}
		if (plen_bogus) {
			FUNC1((ndo, " (bogus)"));
			skip = 1;
		}
		if (skip) {
			FUNC2(*cp, plen - 4);
			cp += plen - 4;
			goto next_property;
		}
		if (property == OFPQT_MIN_RATE) { /* the only case of property decoding */
			/* rate */
			FUNC2(*cp, 2);
			rate = FUNC0(cp);
			cp += 2;
			if (rate > 1000)
				FUNC1((ndo, ", rate disabled"));
			else
				FUNC1((ndo, ", rate %u.%u%%", rate / 10, rate % 10));
			/* pad */
			FUNC2(*cp, 6);
			cp += 6;
		}
next_property:
		len -= plen;
	} /* while */
	return cp;

invalid: /* skip the rest of queue properties */
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp0, len0);
	return cp0 + len0;
trunc:
	FUNC1((ndo, "%s", tstr));
	return ep;
}