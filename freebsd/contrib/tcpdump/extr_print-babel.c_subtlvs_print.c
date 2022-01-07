
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int const MESSAGE_HELLO ;
 int const MESSAGE_IHU ;

 int MESSAGE_SUB_PAD1 ;


 int const MESSAGE_UPDATE ;
 int const MESSAGE_UPDATE_SRC_SPECIFIC ;
 int ND_PRINT (int *) ;
 int diversity_str ;
 int format_timestamp (int ) ;
 int istr ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
subtlvs_print(netdissect_options *ndo,
              const u_char *cp, const u_char *ep, const uint8_t tlv_type)
{
    uint8_t subtype, sublen;
    const char *sep;
    uint32_t t1, t2;

    while (cp < ep) {
        subtype = *cp++;
        if(subtype == MESSAGE_SUB_PAD1) {
            ND_PRINT((ndo, " sub-pad1"));
            continue;
        }
        if(cp == ep)
            goto invalid;
        sublen = *cp++;
        if(cp + sublen > ep)
            goto invalid;

        switch(subtype) {
        case 129:
            ND_PRINT((ndo, " sub-padn"));
            cp += sublen;
            break;
        case 130:
            ND_PRINT((ndo, " sub-diversity"));
            if (sublen == 0) {
                ND_PRINT((ndo, " empty"));
                break;
            }
            sep = " ";
            while(sublen--) {
                ND_PRINT((ndo, "%s%s", sep, tok2str(diversity_str, "%u", *cp++)));
                sep = "-";
            }
            if(tlv_type != MESSAGE_UPDATE &&
               tlv_type != MESSAGE_UPDATE_SRC_SPECIFIC)
                ND_PRINT((ndo, " (bogus)"));
            break;
        case 128:
            ND_PRINT((ndo, " sub-timestamp"));
            if(tlv_type == MESSAGE_HELLO) {
                if(sublen < 4)
                    goto invalid;
                t1 = EXTRACT_32BITS(cp);
                ND_PRINT((ndo, " %s", format_timestamp(t1)));
            } else if(tlv_type == MESSAGE_IHU) {
                if(sublen < 8)
                    goto invalid;
                t1 = EXTRACT_32BITS(cp);
                ND_PRINT((ndo, " %s", format_timestamp(t1)));
                t2 = EXTRACT_32BITS(cp + 4);
                ND_PRINT((ndo, "|%s", format_timestamp(t2)));
            } else
                ND_PRINT((ndo, " (bogus)"));
            cp += sublen;
            break;
        default:
            ND_PRINT((ndo, " sub-unknown-0x%02x", subtype));
            cp += sublen;
        }
    }
    return;

 invalid:
    ND_PRINT((ndo, "%s", istr));
}
