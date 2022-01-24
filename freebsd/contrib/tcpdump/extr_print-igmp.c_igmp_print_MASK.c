#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct cksum_vec {int const* ptr; int len; } ;
struct TYPE_11__ {scalar_t__ ndo_vflag; scalar_t__ ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 scalar_t__ FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int const*,int) ; 
 scalar_t__ FUNC7 (struct cksum_vec*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC14(netdissect_options *ndo,
           register const u_char *bp, register u_int len)
{
    struct cksum_vec vec[1];

    if (ndo->ndo_qflag) {
        FUNC2((ndo, "igmp"));
        return;
    }

    FUNC3(bp[0]);
    switch (bp[0]) {
    case 0x11:
        FUNC2((ndo, "igmp query"));
	if (len >= 12)
	    FUNC10(ndo, bp, len);
	else {
            FUNC3(bp[1]);
	    if (bp[1]) {
		FUNC2((ndo, " v2"));
		if (bp[1] != 100)
		    FUNC2((ndo, " [max resp time %d]", bp[1]));
	    } else
		FUNC2((ndo, " v1"));
            FUNC4(bp[4], 4);
	    if (FUNC1(&bp[4]))
                FUNC2((ndo, " [gaddr %s]", FUNC8(ndo, &bp[4])));
            if (len != 8)
                FUNC2((ndo, " [len %d]", len));
	}
        break;
    case 0x12:
        FUNC4(bp[4], 4);
        FUNC2((ndo, "igmp v1 report %s", FUNC8(ndo, &bp[4])));
        if (len != 8)
            FUNC2((ndo, " [len %d]", len));
        break;
    case 0x16:
        FUNC4(bp[4], 4);
        FUNC2((ndo, "igmp v2 report %s", FUNC8(ndo, &bp[4])));
        break;
    case 0x22:
        FUNC2((ndo, "igmp v3 report"));
	FUNC11(ndo, bp, len);
        break;
    case 0x17:
        FUNC4(bp[4], 4);
        FUNC2((ndo, "igmp leave %s", FUNC8(ndo, &bp[4])));
        break;
    case 0x13:
        FUNC2((ndo, "igmp dvmrp"));
        if (len < 8)
            FUNC2((ndo, " [len %d]", len));
        else
            FUNC6(ndo, bp, len);
        break;
    case 0x14:
        FUNC2((ndo, "igmp pimv1"));
        FUNC9(ndo, bp, len);
        break;
    case 0x1e:
        FUNC12(ndo, bp, len);
        break;
    case 0x1f:
        FUNC13(ndo, bp, len);
        break;
    default:
        FUNC2((ndo, "igmp-%d", bp[0]));
        break;
    }

    if (ndo->ndo_vflag && len >= 4 && FUNC5(bp[0], len)) {
        /* Check the IGMP checksum */
        vec[0].ptr = bp;
        vec[0].len = len;
        if (FUNC7(vec, 1))
            FUNC2((ndo, " bad igmp cksum %x!", FUNC0(&bp[2])));
    }
    return;
trunc:
    FUNC2((ndo, "%s", tstr));
}