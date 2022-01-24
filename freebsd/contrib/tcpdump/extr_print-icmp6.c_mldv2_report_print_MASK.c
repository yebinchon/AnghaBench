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
typedef  int u_char ;
struct in6_addr {int dummy; } ;
struct icmp6_hdr {int /*<<< orphan*/ * icmp6_data16; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  mldv2report2str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo, const u_char *bp, u_int len)
{
    const struct icmp6_hdr *icp = (const struct icmp6_hdr *) bp;
    u_int group, nsrcs, ngroups;
    u_int i, j;

    /* Minimum len is 8 */
    if (len < 8) {
            FUNC1((ndo," [invalid len %d]", len));
            return;
    }

    FUNC2(icp->icmp6_data16[1]);
    ngroups = FUNC0(&icp->icmp6_data16[1]);
    FUNC1((ndo,", %d group record(s)", ngroups));
    if (ndo->ndo_vflag > 0) {
	/* Print the group records */
	group = 8;
        for (i = 0; i < ngroups; i++) {
	    /* type(1) + auxlen(1) + numsrc(2) + grp(16) */
	    if (len < group + 20) {
                    FUNC1((ndo," [invalid number of groups]"));
                    return;
	    }
            FUNC3(bp[group + 4], sizeof(struct in6_addr));
            FUNC1((ndo," [gaddr %s", FUNC4(ndo, &bp[group + 4])));
	    FUNC1((ndo," %s", FUNC5(mldv2report2str, " [v2-report-#%d]",
                                         bp[group])));
            nsrcs = (bp[group + 2] << 8) + bp[group + 3];
	    /* Check the number of sources and print them */
	    if (len < group + 20 + (nsrcs * sizeof(struct in6_addr))) {
                    FUNC1((ndo," [invalid number of sources %d]", nsrcs));
                    return;
	    }
            if (ndo->ndo_vflag == 1)
                    FUNC1((ndo,", %d source(s)", nsrcs));
            else {
		/* Print the sources */
                    FUNC1((ndo," {"));
                for (j = 0; j < nsrcs; j++) {
                    FUNC3(bp[group + 20 + j * sizeof(struct in6_addr)],
                            sizeof(struct in6_addr));
		    FUNC1((ndo," %s", FUNC4(ndo, &bp[group + 20 + j * sizeof(struct in6_addr)])));
		}
                FUNC1((ndo," }"));
            }
	    /* Next group record */
            group += 20 + nsrcs * sizeof(struct in6_addr);
	    FUNC1((ndo,"]"));
        }
    }
    return;
trunc:
    FUNC1((ndo,"[|icmp6]"));
    return;
}