#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  igmpv3report2str ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                    register const u_char *bp, register u_int len)
{
    u_int group, nsrcs, ngroups;
    register u_int i, j;

    /* Minimum len is 16, and should be a multiple of 4 */
    if (len < 16 || len & 0x03) {
	FUNC1((ndo, " [invalid len %d]", len));
	return;
    }
    FUNC2(bp[6], 2);
    ngroups = FUNC0(&bp[6]);
    FUNC1((ndo, ", %d group record(s)", ngroups));
    if (ndo->ndo_vflag > 0) {
	/* Print the group records */
	group = 8;
        for (i=0; i<ngroups; i++) {
	    if (len < group+8) {
		FUNC1((ndo, " [invalid number of groups]"));
		return;
	    }
	    FUNC2(bp[group+4], 4);
            FUNC1((ndo, " [gaddr %s", FUNC3(ndo, &bp[group+4])));
	    FUNC1((ndo, " %s", FUNC4(igmpv3report2str, " [v3-report-#%d]",
								bp[group])));
            nsrcs = FUNC0(&bp[group+2]);
	    /* Check the number of sources and print them */
	    if (len < group+8+(nsrcs<<2)) {
		FUNC1((ndo, " [invalid number of sources %d]", nsrcs));
		return;
	    }
            if (ndo->ndo_vflag == 1)
                FUNC1((ndo, ", %d source(s)", nsrcs));
            else {
		/* Print the sources */
                FUNC1((ndo, " {"));
                for (j=0; j<nsrcs; j++) {
		    FUNC2(bp[group+8+(j<<2)], 4);
		    FUNC1((ndo, " %s", FUNC3(ndo, &bp[group+8+(j<<2)])));
		}
                FUNC1((ndo, " }"));
            }
	    /* Next group record */
            group += 8 + (nsrcs << 2);
	    FUNC1((ndo, "]"));
        }
    }
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}