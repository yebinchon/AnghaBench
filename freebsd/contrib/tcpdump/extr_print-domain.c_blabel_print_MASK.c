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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 

__attribute__((used)) static const u_char *
FUNC3(netdissect_options *ndo,
             const u_char *cp)
{
	int bitlen, slen, b;
	const u_char *bitp, *lim;
	char tc;

	if (!FUNC2(*cp, 1))
		return(NULL);
	if ((bitlen = *cp) == 0)
		bitlen = 256;
	slen = (bitlen + 3) / 4;
	lim = cp + 1 + slen;

	/* print the bit string as a hex string */
	FUNC0((ndo, "\\[x"));
	for (bitp = cp + 1, b = bitlen; bitp < lim && b > 7; b -= 8, bitp++) {
		FUNC1(*bitp);
		FUNC0((ndo, "%02x", *bitp));
	}
	if (b > 4) {
		FUNC1(*bitp);
		tc = *bitp++;
		FUNC0((ndo, "%02x", tc & (0xff << (8 - b))));
	} else if (b > 0) {
		FUNC1(*bitp);
		tc = *bitp++;
		FUNC0((ndo, "%1x", ((tc >> 4) & 0x0f) & (0x0f << (4 - b))));
	}
	FUNC0((ndo, "/%d]", bitlen));
	return lim;
trunc:
	FUNC0((ndo, ".../%d]", bitlen));
	return NULL;
}