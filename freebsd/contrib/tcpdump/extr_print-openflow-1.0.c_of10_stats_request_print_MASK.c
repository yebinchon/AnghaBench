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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int const FUNC0 (int const*) ; 
 int const FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const) ; 
#define  OFPST_AGGREGATE 134 
#define  OFPST_DESC 133 
#define  OFPST_FLOW 132 
#define  OFPST_PORT 131 
#define  OFPST_QUEUE 130 
#define  OFPST_TABLE 129 
#define  OFPST_VENDOR 128 
 int OF_FLOW_STATS_REQUEST_LEN ; 
 int OF_PORT_STATS_REQUEST_LEN ; 
 int OF_QUEUE_STATS_REQUEST_LEN ; 
 scalar_t__ OF_STATS_REQUEST_LEN ; 
 int /*<<< orphan*/  istr ; 
 int* FUNC4 (int /*<<< orphan*/ *,char*,int const*,int const*) ; 
 int const* FUNC5 (int /*<<< orphan*/ *,int const*,int const*,int) ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  ofpq_str ; 
 int /*<<< orphan*/  ofpst_str ; 
 int /*<<< orphan*/  tableid_str ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC7(netdissect_options *ndo,
                         const u_char *cp, const u_char *ep, u_int len)
{
	const u_char *cp0 = cp;
	const u_int len0 = len;
	uint16_t type;

	/* type */
	FUNC3(*cp, 2);
	type = FUNC0(cp);
	cp += 2;
	FUNC2((ndo, "\n\t type %s", FUNC6(ofpst_str, "invalid (0x%04x)", type)));
	/* flags */
	FUNC3(*cp, 2);
	FUNC2((ndo, ", flags 0x%04x", FUNC0(cp)));
	if (FUNC0(cp))
		FUNC2((ndo, " (bogus)"));
	cp += 2;
	/* type-specific body of one of fixed lengths */
	len -= OF_STATS_REQUEST_LEN;
	switch(type) {
	case OFPST_DESC:
	case OFPST_TABLE:
		if (len)
			goto invalid;
		return cp;
	case OFPST_FLOW:
	case OFPST_AGGREGATE:
		if (len != OF_FLOW_STATS_REQUEST_LEN)
			goto invalid;
		/* match */
		if (ep == (cp = FUNC4(ndo, "\n\t ", cp, ep)))
			return ep; /* end of snapshot */
		/* table_id */
		FUNC3(*cp, 1);
		FUNC2((ndo, "\n\t table_id %s", FUNC6(tableid_str, "%u", *cp)));
		cp += 1;
		/* pad */
		FUNC3(*cp, 1);
		cp += 1;
		/* out_port */
		FUNC3(*cp, 2);
		FUNC2((ndo, ", out_port %s", FUNC6(ofpp_str, "%u", FUNC0(cp))));
		return cp + 2;
	case OFPST_PORT:
		if (len != OF_PORT_STATS_REQUEST_LEN)
			goto invalid;
		/* port_no */
		FUNC3(*cp, 2);
		FUNC2((ndo, "\n\t port_no %s", FUNC6(ofpp_str, "%u", FUNC0(cp))));
		cp += 2;
		/* pad */
		FUNC3(*cp, 6);
		return cp + 6;
	case OFPST_QUEUE:
		if (len != OF_QUEUE_STATS_REQUEST_LEN)
			goto invalid;
		/* port_no */
		FUNC3(*cp, 2);
		FUNC2((ndo, "\n\t port_no %s", FUNC6(ofpp_str, "%u", FUNC0(cp))));
		cp += 2;
		/* pad */
		FUNC3(*cp, 2);
		cp += 2;
		/* queue_id */
		FUNC3(*cp, 4);
		FUNC2((ndo, ", queue_id %s", FUNC6(ofpq_str, "%u", FUNC1(cp))));
		return cp + 4;
	case OFPST_VENDOR:
		return FUNC5(ndo, cp, ep, len);
	}
	return cp;

invalid: /* skip the message body */
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp0, len0);
	return cp0 + len0;
trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}