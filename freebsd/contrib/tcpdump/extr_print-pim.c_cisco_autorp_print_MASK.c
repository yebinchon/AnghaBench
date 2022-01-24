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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void
FUNC6(netdissect_options *ndo,
                   register const u_char *bp, register u_int len)
{
	int type;
	int numrps;
	int hold;

	if (len < 8)
		goto trunc;
	FUNC2(bp[0]);
	FUNC1((ndo, " auto-rp "));
	type = bp[0];
	switch (type) {
	case 0x11:
		FUNC1((ndo, "candidate-advert"));
		break;
	case 0x12:
		FUNC1((ndo, "mapping"));
		break;
	default:
		FUNC1((ndo, "type-0x%02x", type));
		break;
	}

	FUNC2(bp[1]);
	numrps = bp[1];

	FUNC3(bp[2], 2);
	FUNC1((ndo, " Hold "));
	hold = FUNC0(&bp[2]);
	if (hold)
		FUNC5(ndo, FUNC0(&bp[2]));
	else
		FUNC1((ndo, "FOREVER"));

	/* Next 4 bytes are reserved. */

	bp += 8; len -= 8;

	/*XXX skip unless -v? */

	/*
	 * Rest of packet:
	 * numrps entries of the form:
	 * 32 bits: RP
	 * 6 bits: reserved
	 * 2 bits: PIM version supported, bit 0 is "supports v1", 1 is "v2".
	 * 8 bits: # of entries for this RP
	 * each entry: 7 bits: reserved, 1 bit: negative,
	 *	       8 bits: mask 32 bits: source
	 * lather, rinse, repeat.
	 */
	while (numrps--) {
		int nentries;
		char s;

		if (len < 4)
			goto trunc;
		FUNC3(bp[0], 4);
		FUNC1((ndo, " RP %s", FUNC4(ndo, bp)));
		bp += 4;
		len -= 4;
		if (len < 1)
			goto trunc;
		FUNC2(bp[0]);
		switch (bp[0] & 0x3) {
		case 0: FUNC1((ndo, " PIMv?"));
			break;
		case 1:	FUNC1((ndo, " PIMv1"));
			break;
		case 2:	FUNC1((ndo, " PIMv2"));
			break;
		case 3:	FUNC1((ndo, " PIMv1+2"));
			break;
		}
		if (bp[0] & 0xfc)
			FUNC1((ndo, " [rsvd=0x%02x]", bp[0] & 0xfc));
		bp += 1;
		len -= 1;
		if (len < 1)
			goto trunc;
		FUNC2(bp[0]);
		nentries = bp[0];
		bp += 1;
		len -= 1;
		s = ' ';
		for (; nentries; nentries--) {
			if (len < 6)
				goto trunc;
			FUNC3(bp[0], 6);
			FUNC1((ndo, "%c%s%s/%d", s, bp[0] & 1 ? "!" : "",
			          FUNC4(ndo, &bp[2]), bp[1]));
			if (bp[0] & 0x02) {
				FUNC1((ndo, " bidir"));
			}
			if (bp[0] & 0xfc) {
				FUNC1((ndo, "[rsvd=0x%02x]", bp[0] & 0xfc));
			}
			s = ',';
			bp += 6; len -= 6;
		}
	}
	return;

trunc:
	FUNC1((ndo, "[|autorp]"));
	return;
}