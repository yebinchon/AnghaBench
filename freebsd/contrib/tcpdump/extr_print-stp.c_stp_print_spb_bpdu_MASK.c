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
struct stp_bpdu_ {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_snapend; int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int SPB_BPDU_AGREEMENT_CON_OFFSET ; 
 int SPB_BPDU_AGREEMENT_DIGEST_OFFSET ; 
 int SPB_BPDU_AGREEMENT_EDGE_OFFSET ; 
 int SPB_BPDU_AGREEMENT_FORMAT_OFFSET ; 
 int SPB_BPDU_AGREEMENT_OFFSET ; 
 int SPB_BPDU_CONFIG_DIGEST_OFFSET ; 
 int SPB_BPDU_CONFIG_NAME_OFFSET ; 
 int SPB_BPDU_CONFIG_REV_OFFSET ; 
 scalar_t__ FUNC4 (TYPE_1__*,int const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo, const struct stp_bpdu_ *stp_bpdu,
                   u_int offset)
{
    const u_char *ptr;

    /*
     * in non-verbose mode don't print anything.
     */
    if (!ndo->ndo_vflag) {
        return 1;
    }

    ptr = (const u_char *)stp_bpdu;
    FUNC3(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET + 16);

    FUNC2((ndo, "\n\tv4len %d, ", FUNC0 (ptr + offset)));
    FUNC2((ndo, "AUXMCID Name "));
    if (FUNC4(ndo, ptr + offset + SPB_BPDU_CONFIG_NAME_OFFSET, 32,
		   ndo->ndo_snapend))
	goto trunc;
    FUNC2((ndo, ", Rev %u,\n\t\tdigest %08x%08x%08x%08x",
            FUNC0(ptr + offset + SPB_BPDU_CONFIG_REV_OFFSET),
            FUNC1(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET),
            FUNC1(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 4),
            FUNC1(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 8),
            FUNC1(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 12)));

    FUNC2((ndo, "\n\tAgreement num %d, Discarded Agreement num %d, Agreement valid-"
            "flag %d,\n\tRestricted role-flag: %d, Format id %d cap %d, "
            "Convention id %d cap %d,\n\tEdge count %d, "
            "Agreement digest %08x%08x%08x%08x%08x\n",
            ptr[offset + SPB_BPDU_AGREEMENT_OFFSET]>>6,
            ptr[offset + SPB_BPDU_AGREEMENT_OFFSET]>>4 & 0x3,
            ptr[offset + SPB_BPDU_AGREEMENT_OFFSET]>>3 & 0x1,
            ptr[offset + SPB_BPDU_AGREEMENT_OFFSET]>>2 & 0x1,
            ptr[offset + SPB_BPDU_AGREEMENT_FORMAT_OFFSET]>>4,
            ptr[offset + SPB_BPDU_AGREEMENT_FORMAT_OFFSET]&0x00ff,
            ptr[offset + SPB_BPDU_AGREEMENT_CON_OFFSET]>>4,
            ptr[offset + SPB_BPDU_AGREEMENT_CON_OFFSET]&0x00ff,
            FUNC0(ptr + offset + SPB_BPDU_AGREEMENT_EDGE_OFFSET),
            FUNC1(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET),
            FUNC1(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+4),
            FUNC1(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+8),
            FUNC1(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+12),
            FUNC1(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+16)));
    return 1;

trunc:
    return 0;
}