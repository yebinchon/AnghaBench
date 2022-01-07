
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct eap_frame_t {int const type; int const* length; int version; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;





 int EAP_TLS_EXTRACT_BIT_L (int const) ;
 int EAP_TTLS_VERSION (int const) ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct eap_frame_t const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_16BITS (int const*) ;
 int ND_TCHECK_32BITS (int const*) ;
 int ND_TCHECK_8BITS (int const*) ;
 int bittok2str (int ,char*,int const) ;
 int eap_aka_subtype_values ;
 int eap_code_values ;
 int eap_frame_type_values ;
 int eap_tls_flags_values ;
 int eap_type_values ;
 int safeputs (TYPE_1__*,int const*,int) ;
 int tok2str (int ,char*,int const) ;

void
eap_print(netdissect_options *ndo,
          register const u_char *cp,
          u_int length)
{
    const struct eap_frame_t *eap;
    const u_char *tptr;
    u_int tlen, type, subtype;
    int count=0, len;

    tptr = cp;
    tlen = length;
    eap = (const struct eap_frame_t *)cp;
    ND_TCHECK(*eap);


    if (ndo->ndo_vflag < 1) {
 ND_PRINT((ndo, "%s (%u) v%u, len %u",
               tok2str(eap_frame_type_values, "unknown", eap->type),
               eap->type,
               eap->version,
               EXTRACT_16BITS(eap->length)));
 return;
    }

    ND_PRINT((ndo, "%s (%u) v%u, len %u",
           tok2str(eap_frame_type_values, "unknown", eap->type),
           eap->type,
           eap->version,
           EXTRACT_16BITS(eap->length)));

    tptr += sizeof(const struct eap_frame_t);
    tlen -= sizeof(const struct eap_frame_t);

    switch (eap->type) {
    case 141:
        ND_TCHECK_8BITS(tptr);
        type = *(tptr);
        ND_TCHECK_16BITS(tptr+2);
        len = EXTRACT_16BITS(tptr+2);
        ND_PRINT((ndo, ", %s (%u), id %u, len %u",
               tok2str(eap_code_values, "unknown", type),
               type,
               *(tptr+1),
               len));

        ND_TCHECK2(*tptr, len);

        if (type <= 2) {
            ND_TCHECK_8BITS(tptr+4);
            subtype = *(tptr+4);
            ND_PRINT((ndo, "\n\t\t Type %s (%u)",
                   tok2str(eap_type_values, "unknown", subtype),
                   subtype));

            switch (subtype) {
            case 135:
                if (len - 5 > 0) {
                    ND_PRINT((ndo, ", Identity: "));
                    safeputs(ndo, tptr + 5, len - 5);
                }
                break;

            case 132:
                if (len - 5 > 0) {
                    ND_PRINT((ndo, ", Notification: "));
                    safeputs(ndo, tptr + 5, len - 5);
                }
                break;

            case 133:
                count = 5;






                while (count < len) {
                    ND_TCHECK_8BITS(tptr+count);
                    ND_PRINT((ndo, " %s (%u),",
                           tok2str(eap_type_values, "unknown", *(tptr+count)),
                           *(tptr + count)));
                    count++;
                }
                break;

            case 128:
            case 129:
                ND_TCHECK_8BITS(tptr + 5);
                if (subtype == 128)
                    ND_PRINT((ndo, " TTLSv%u",
                           EAP_TTLS_VERSION(*(tptr + 5))));
                ND_PRINT((ndo, " flags [%s] 0x%02x,",
                       bittok2str(eap_tls_flags_values, "none", *(tptr+5)),
                       *(tptr + 5)));

                if (EAP_TLS_EXTRACT_BIT_L(*(tptr+5))) {
                    ND_TCHECK_32BITS(tptr + 6);
      ND_PRINT((ndo, " len %u", EXTRACT_32BITS(tptr + 6)));
                }
                break;

            case 137:
                ND_TCHECK_8BITS(tptr + 5);
                ND_PRINT((ndo, " FASTv%u",
                       EAP_TTLS_VERSION(*(tptr + 5))));
                ND_PRINT((ndo, " flags [%s] 0x%02x,",
                       bittok2str(eap_tls_flags_values, "none", *(tptr+5)),
                       *(tptr + 5)));

                if (EAP_TLS_EXTRACT_BIT_L(*(tptr+5))) {
                    ND_TCHECK_32BITS(tptr + 6);
                    ND_PRINT((ndo, " len %u", EXTRACT_32BITS(tptr + 6)));
                }


                break;

            case 140:
            case 130:
                ND_TCHECK_8BITS(tptr + 5);
                ND_PRINT((ndo, " subtype [%s] 0x%02x,",
                       tok2str(eap_aka_subtype_values, "unknown", *(tptr+5)),
                       *(tptr + 5)));


                break;

            case 134:
            case 131:
            case 136:
            case 139:
            case 138:
            default:
                break;
            }
        }
        break;

    case 142:
    case 143:
    default:
        break;
    }
    return;

 trunc:
    ND_PRINT((ndo, "\n\t[|EAP]"));
}
