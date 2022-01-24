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
struct icmp6_hdr {int const* icmp6_data16; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *bp, u_int len)
{
    const struct icmp6_hdr *icp = (const struct icmp6_hdr *) bp;
    u_int mrc;
    int mrt, qqi;
    u_int nsrcs;
    register u_int i;

    /* Minimum len is 28 */
    if (len < 28) {
            FUNC1((ndo," [invalid len %d]", len));
	return;
    }
    FUNC2(icp->icmp6_data16[0]);
    mrc = FUNC0(&icp->icmp6_data16[0]);
    if (mrc < 32768) {
	mrt = mrc;
    } else {
        mrt = ((mrc & 0x0fff) | 0x1000) << (((mrc & 0x7000) >> 12) + 3);
    }
    if (ndo->ndo_vflag) {
            FUNC1((ndo," [max resp delay=%d]", mrt));
    }
    FUNC3(bp[8], sizeof(struct in6_addr));
    FUNC1((ndo," [gaddr %s", FUNC4(ndo, &bp[8])));

    if (ndo->ndo_vflag) {
        FUNC2(bp[25]);
	if (bp[24] & 0x08) {
		FUNC1((ndo," sflag"));
	}
	if (bp[24] & 0x07) {
		FUNC1((ndo," robustness=%d", bp[24] & 0x07));
	}
	if (bp[25] < 128) {
		qqi = bp[25];
	} else {
		qqi = ((bp[25] & 0x0f) | 0x10) << (((bp[25] & 0x70) >> 4) + 3);
	}
	FUNC1((ndo," qqi=%d", qqi));
    }

    FUNC3(bp[26], 2);
    nsrcs = FUNC0(&bp[26]);
    if (nsrcs > 0) {
	if (len < 28 + nsrcs * sizeof(struct in6_addr))
	    FUNC1((ndo," [invalid number of sources]"));
	else if (ndo->ndo_vflag > 1) {
	    FUNC1((ndo," {"));
	    for (i = 0; i < nsrcs; i++) {
		FUNC3(bp[28 + i * sizeof(struct in6_addr)],
                        sizeof(struct in6_addr));
		FUNC1((ndo," %s", FUNC4(ndo, &bp[28 + i * sizeof(struct in6_addr)])));
	    }
	    FUNC1((ndo," }"));
	} else
                FUNC1((ndo,", %d source(s)", nsrcs));
    }
    FUNC1((ndo,"]"));
    return;
trunc:
    FUNC1((ndo,"[|icmp6]"));
    return;
}