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
typedef  int uint32_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
             register const u_char *bp, register const u_char *ep,
             register u_int len)
{
	register uint32_t mask, origin;
	register int metric, done;
	register u_int i, width;

	while (len > 0) {
		if (len < 3) {
			FUNC0((ndo, " [|]"));
			return (0);
		}
		FUNC2(bp[0], 3);
		mask = (uint32_t)0xff << 24 | bp[0] << 16 | bp[1] << 8 | bp[2];
		width = 1;
		if (bp[0])
			width = 2;
		if (bp[1])
			width = 3;
		if (bp[2])
			width = 4;

		FUNC0((ndo, "\n\tMask %s", FUNC4(FUNC3(mask))));
		bp += 3;
		len -= 3;
		do {
			if (bp + width + 1 > ep) {
				FUNC0((ndo, " [|]"));
				return (0);
			}
			if (len < width + 1) {
				FUNC0((ndo, "\n\t  [Truncated Report]"));
				return (0);
			}
			origin = 0;
			for (i = 0; i < width; ++i) {
				FUNC1(*bp);
				origin = origin << 8 | *bp++;
			}
			for ( ; i < 4; ++i)
				origin <<= 8;

			FUNC1(*bp);
			metric = *bp++;
			done = metric & 0x80;
			metric &= 0x7f;
			FUNC0((ndo, "\n\t  %s metric %d", FUNC4(FUNC3(origin)),
				metric));
			len -= width + 1;
		} while (!done);
	}
	return (0);
trunc:
	return (-1);
}