
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct stp_bpdu_ {int dummy; } ;
struct TYPE_5__ {int ndo_snapend; int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK_32BITS (int const*) ;
 int SPB_BPDU_AGREEMENT_CON_OFFSET ;
 int SPB_BPDU_AGREEMENT_DIGEST_OFFSET ;
 int SPB_BPDU_AGREEMENT_EDGE_OFFSET ;
 int SPB_BPDU_AGREEMENT_FORMAT_OFFSET ;
 int SPB_BPDU_AGREEMENT_OFFSET ;
 int SPB_BPDU_CONFIG_DIGEST_OFFSET ;
 int SPB_BPDU_CONFIG_NAME_OFFSET ;
 int SPB_BPDU_CONFIG_REV_OFFSET ;
 scalar_t__ fn_printzp (TYPE_1__*,int const*,int,int ) ;

__attribute__((used)) static int
stp_print_spb_bpdu(netdissect_options *ndo, const struct stp_bpdu_ *stp_bpdu,
                   u_int offset)
{
    const u_char *ptr;




    if (!ndo->ndo_vflag) {
        return 1;
    }

    ptr = (const u_char *)stp_bpdu;
    ND_TCHECK_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET + 16);

    ND_PRINT((ndo, "\n\tv4len %d, ", EXTRACT_16BITS (ptr + offset)));
    ND_PRINT((ndo, "AUXMCID Name "));
    if (fn_printzp(ndo, ptr + offset + SPB_BPDU_CONFIG_NAME_OFFSET, 32,
     ndo->ndo_snapend))
 goto trunc;
    ND_PRINT((ndo, ", Rev %u,\n\t\tdigest %08x%08x%08x%08x",
            EXTRACT_16BITS(ptr + offset + SPB_BPDU_CONFIG_REV_OFFSET),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 4),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 8),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_CONFIG_DIGEST_OFFSET + 12)));

    ND_PRINT((ndo, "\n\tAgreement num %d, Discarded Agreement num %d, Agreement valid-"
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
            EXTRACT_16BITS(ptr + offset + SPB_BPDU_AGREEMENT_EDGE_OFFSET),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+4),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+8),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+12),
            EXTRACT_32BITS(ptr + offset + SPB_BPDU_AGREEMENT_DIGEST_OFFSET+16)));
    return 1;

trunc:
    return 0;
}
