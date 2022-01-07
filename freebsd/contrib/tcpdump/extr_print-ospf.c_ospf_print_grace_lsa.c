
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;



 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int lsa_opaque_grace_tlv_reason_values ;
 int lsa_opaque_grace_tlv_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int const) ;

int
ospf_print_grace_lsa(netdissect_options *ndo,
                     const uint8_t *tptr, u_int ls_length)
{
    u_int tlv_type, tlv_length;


    while (ls_length > 0) {
        ND_TCHECK2(*tptr, 4);
        if (ls_length < 4) {
            ND_PRINT((ndo, "\n\t    Remaining LS length %u < 4", ls_length));
            return -1;
        }
        tlv_type = EXTRACT_16BITS(tptr);
        tlv_length = EXTRACT_16BITS(tptr+2);
        tptr+=4;
        ls_length-=4;

        ND_PRINT((ndo, "\n\t    %s TLV (%u), length %u, value: ",
               tok2str(lsa_opaque_grace_tlv_values,"unknown",tlv_type),
               tlv_type,
               tlv_length));

        if (tlv_length > ls_length) {
            ND_PRINT((ndo, "\n\t    Bogus length %u > %u", tlv_length,
                   ls_length));
            return -1;
        }


        if (tlv_type == 0 || tlv_length ==0) {
            return -1;
        }

        ND_TCHECK2(*tptr, tlv_length);
        switch(tlv_type) {

        case 129:
            if (tlv_length != 4) {
                ND_PRINT((ndo, "\n\t    Bogus length %u != 4", tlv_length));
                return -1;
            }
            ND_PRINT((ndo, "%us", EXTRACT_32BITS(tptr)));
            break;

        case 128:
            if (tlv_length != 1) {
                ND_PRINT((ndo, "\n\t    Bogus length %u != 1", tlv_length));
                return -1;
            }
            ND_PRINT((ndo, "%s (%u)",
                   tok2str(lsa_opaque_grace_tlv_reason_values, "Unknown", *tptr),
                   *tptr));
            break;

        case 130:
            if (tlv_length != 4) {
                ND_PRINT((ndo, "\n\t    Bogus length %u != 4", tlv_length));
                return -1;
            }
            ND_PRINT((ndo, "%s", ipaddr_string(ndo, tptr)));
            break;

        default:
            if (ndo->ndo_vflag <= 1) {
                if (!print_unknown_data(ndo, tptr, "\n\t      ", tlv_length))
                    return -1;
            }
            break;

        }

        if (tlv_length%4 != 0)
            tlv_length+=4-(tlv_length%4);
        ls_length-=tlv_length;
        tptr+=tlv_length;
    }

    return 0;
trunc:
    return -1;
}
