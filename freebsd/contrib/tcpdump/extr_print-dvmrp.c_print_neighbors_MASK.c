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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                register const u_char *bp, register const u_char *ep,
                register u_int len)
{
	const u_char *laddr;
	register u_char metric;
	register u_char thresh;
	register int ncount;

	while (len > 0 && bp < ep) {
		FUNC1(bp[0], 7);
		laddr = bp;
		bp += 4;
		metric = *bp++;
		thresh = *bp++;
		ncount = *bp++;
		len -= 7;
		while (--ncount >= 0) {
			FUNC1(bp[0], 4);
			FUNC0((ndo, " [%s ->", FUNC2(ndo, laddr)));
			FUNC0((ndo, " %s, (%d/%d)]",
				   FUNC2(ndo, bp), metric, thresh));
			bp += 4;
			len -= 4;
		}
	}
	return (0);
trunc:
	return (-1);
}