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
 int DVMRP_NF_DISABLED ; 
 int DVMRP_NF_DOWN ; 
 int DVMRP_NF_QUERIER ; 
 int DVMRP_NF_SRCRT ; 
 int DVMRP_NF_TUNNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*) ; 
 int target_level ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                 register const u_char *bp, register const u_char *ep,
                 register u_int len)
{
	const u_char *laddr;
	register u_char metric, thresh, flags;
	register int ncount;

	FUNC0((ndo, " (v %d.%d):",
	       (int)target_level & 0xff,
	       (int)(target_level >> 8) & 0xff));

	while (len > 0 && bp < ep) {
		FUNC1(bp[0], 8);
		laddr = bp;
		bp += 4;
		metric = *bp++;
		thresh = *bp++;
		flags = *bp++;
		ncount = *bp++;
		len -= 8;
		while (--ncount >= 0 && (len >= 4) && (bp + 4) <= ep) {
			FUNC0((ndo, " [%s -> ", FUNC2(ndo, laddr)));
			FUNC0((ndo, "%s (%d/%d", FUNC2(ndo, bp),
				     metric, thresh));
			if (flags & DVMRP_NF_TUNNEL)
				FUNC0((ndo, "/tunnel"));
			if (flags & DVMRP_NF_SRCRT)
				FUNC0((ndo, "/srcrt"));
			if (flags & DVMRP_NF_QUERIER)
				FUNC0((ndo, "/querier"));
			if (flags & DVMRP_NF_DISABLED)
				FUNC0((ndo, "/disabled"));
			if (flags & DVMRP_NF_DOWN)
				FUNC0((ndo, "/down"));
			FUNC0((ndo, ")]"));
			bp += 4;
			len -= 4;
		}
		if (ncount != -1) {
			FUNC0((ndo, " [|]"));
			return (0);
		}
	}
	return (0);
trunc:
	return (-1);
}