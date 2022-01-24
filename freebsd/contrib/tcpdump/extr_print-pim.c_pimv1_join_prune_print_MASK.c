#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct in_addr {int dummy; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 scalar_t__ FUNC4 (int const,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo,
                       register const u_char *bp, register u_int len)
{
	int ngroups, njoin, nprune;
	int njp;

	/* If it's a single group and a single source, use 1-line output. */
	if (FUNC4(bp[0], 30) && bp[11] == 1 &&
	    ((njoin = FUNC0(&bp[20])) + FUNC0(&bp[22])) == 1) {
		int hold;

		FUNC2((ndo, " RPF %s ", FUNC5(ndo, bp)));
		hold = FUNC0(&bp[6]);
		if (hold != 180) {
			FUNC2((ndo, "Hold "));
			FUNC6(ndo, hold);
		}
		FUNC2((ndo, "%s (%s/%d, %s", njoin ? "Join" : "Prune",
		FUNC5(ndo, &bp[26]), bp[25] & 0x3f,
		FUNC5(ndo, &bp[12])));
		if (FUNC1(&bp[16]) != 0xffffffff)
			FUNC2((ndo, "/%s", FUNC5(ndo, &bp[16])));
		FUNC2((ndo, ") %s%s %s",
		    (bp[24] & 0x01) ? "Sparse" : "Dense",
		    (bp[25] & 0x80) ? " WC" : "",
		    (bp[25] & 0x40) ? "RP" : "SPT"));
		return;
	}

	if (len < sizeof(struct in_addr))
		goto trunc;
	FUNC3(bp[0], sizeof(struct in_addr));
	if (ndo->ndo_vflag > 1)
		FUNC2((ndo, "\n"));
	FUNC2((ndo, " Upstream Nbr: %s", FUNC5(ndo, bp)));
	bp += 4;
	len -= 4;
	if (len < 4)
		goto trunc;
	FUNC3(bp[2], 2);
	if (ndo->ndo_vflag > 1)
		FUNC2((ndo, "\n"));
	FUNC2((ndo, " Hold time: "));
	FUNC6(ndo, FUNC0(&bp[2]));
	if (ndo->ndo_vflag < 2)
		return;
	bp += 4;
	len -= 4;

	if (len < 4)
		goto trunc;
	FUNC3(bp[0], 4);
	ngroups = bp[3];
	bp += 4;
	len -= 4;
	while (ngroups--) {
		/*
		 * XXX - does the address have length "addrlen" and the
		 * mask length "maddrlen"?
		 */
		if (len < 4)
			goto trunc;
		FUNC3(bp[0], sizeof(struct in_addr));
		FUNC2((ndo, "\n\tGroup: %s", FUNC5(ndo, bp)));
		bp += 4;
		len -= 4;
		if (len < 4)
			goto trunc;
		FUNC3(bp[0], sizeof(struct in_addr));
		if (FUNC1(&bp[0]) != 0xffffffff)
			FUNC2((ndo, "/%s", FUNC5(ndo, &bp[0])));
		bp += 4;
		len -= 4;
		if (len < 4)
			goto trunc;
		FUNC3(bp[0], 4);
		njoin = FUNC0(&bp[0]);
		nprune = FUNC0(&bp[2]);
		FUNC2((ndo, " joined: %d pruned: %d", njoin, nprune));
		bp += 4;
		len -= 4;
		for (njp = 0; njp < (njoin + nprune); njp++) {
			const char *type;

			if (njp < njoin)
				type = "Join ";
			else
				type = "Prune";
			if (len < 6)
				goto trunc;
			FUNC3(bp[0], 6);
			FUNC2((ndo, "\n\t%s %s%s%s%s/%d", type,
			    (bp[0] & 0x01) ? "Sparse " : "Dense ",
			    (bp[1] & 0x80) ? "WC " : "",
			    (bp[1] & 0x40) ? "RP " : "SPT ",
			    FUNC5(ndo, &bp[2]),
			    bp[1] & 0x3f));
			bp += 6;
			len -= 6;
		}
	}
	return;
trunc:
	FUNC2((ndo, "[|pim]"));
	return;
}