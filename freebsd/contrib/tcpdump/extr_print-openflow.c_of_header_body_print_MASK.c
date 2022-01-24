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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int OF_HEADER_LEN ; 
#define  OF_VER_1_0 128 
 int /*<<< orphan*/  istr ; 
 int const* FUNC4 (int /*<<< orphan*/ *,int const*,int const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC6(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
	uint8_t version, type;
	uint16_t length;
	uint32_t xid;

	if (ep < cp + OF_HEADER_LEN)
		goto invalid;
	/* version */
	FUNC3(*cp, 1);
	version = *cp;
	cp += 1;
	/* type */
	FUNC3(*cp, 1);
	type = *cp;
	cp += 1;
	/* length */
	FUNC3(*cp, 2);
	length = FUNC0(cp);
	cp += 2;
	/* xid */
	FUNC3(*cp, 4);
	xid = FUNC1(cp);
	cp += 4;
	/* Message length includes the header length and a message always includes
	 * the basic header. A message length underrun fails decoding of the rest of
	 * the current packet. At the same time, try decoding as much of the current
	 * message as possible even when it does not end within the current TCP
	 * segment. */
	if (length < OF_HEADER_LEN) {
		FUNC5(ndo, version, type, length, xid);
		goto invalid;
	}
	/* Decode known protocol versions further without printing the header (the
	 * type decoding is version-specific. */
	switch (version) {
	case OF_VER_1_0:
		return FUNC4(ndo, cp, ep, type, length, xid);
	default:
		FUNC5(ndo, version, type, length, xid);
		FUNC3(*cp, length - OF_HEADER_LEN);
		return cp + length - OF_HEADER_LEN; /* done with current message */
	}

invalid: /* fail current packet */
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp, ep - cp);
	return ep;
trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}