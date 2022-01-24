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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  const FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int OF_PACKET_IN_LEN ; 
 int /*<<< orphan*/  bufferid_str ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  ofpr_str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC6(netdissect_options *ndo,
                     const u_char *cp, const u_char *ep, const u_int len)
{
	/* buffer_id */
	FUNC3(*cp, 4);
	FUNC2((ndo, "\n\t buffer_id %s", FUNC5(bufferid_str, "0x%08x", FUNC1(cp))));
	cp += 4;
	/* total_len */
	FUNC3(*cp, 2);
	FUNC2((ndo, ", total_len %u", FUNC0(cp)));
	cp += 2;
	/* in_port */
	FUNC3(*cp, 2);
	FUNC2((ndo, ", in_port %s", FUNC5(ofpp_str, "%u", FUNC0(cp))));
	cp += 2;
	/* reason */
	FUNC3(*cp, 1);
	FUNC2((ndo, ", reason %s", FUNC5(ofpr_str, "invalid (0x%02x)", *cp)));
	cp += 1;
	/* pad */
	FUNC3(*cp, 1);
	cp += 1;
	/* data */
	/* 2 mock octets count in OF_PACKET_IN_LEN but not in len */
	return FUNC4(ndo, cp, ep, len - (OF_PACKET_IN_LEN - 2));

trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}