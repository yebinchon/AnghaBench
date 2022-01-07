
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;




 int DTP_HEADER_LEN ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int dtp_tlv_values ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int fn_printzp (TYPE_1__*,int const*,int,int const*) ;
 int istr ;
 int tok2str (int ,char*,int) ;
 int tstr ;

void
dtp_print (netdissect_options *ndo, const u_char *pptr, u_int length)
{
    int type, len;
    const u_char *tptr;

    if (length < DTP_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    ND_TCHECK2(*tptr, DTP_HEADER_LEN);

    ND_PRINT((ndo, "DTPv%u, length %u",
           (*tptr),
           length));




    if (ndo->ndo_vflag < 1) {
 return;
    }

    tptr += DTP_HEADER_LEN;

    while (tptr < (pptr+length)) {

        ND_TCHECK2(*tptr, 4);
 type = EXTRACT_16BITS(tptr);
        len = EXTRACT_16BITS(tptr+2);

        if (type == 0)
            return;
        ND_PRINT((ndo, "\n\t%s (0x%04x) TLV, length %u",
               tok2str(dtp_tlv_values, "Unknown", type),
               type, len));


        if (len < 4)
            goto invalid;
        ND_TCHECK2(*tptr, len);

        switch (type) {
 case 131:
  ND_PRINT((ndo, ", "));
  fn_printzp(ndo, tptr+4, len-4, pptr+length);
  break;

 case 128:
 case 130:
                if (len < 5)
                    goto invalid;
                ND_PRINT((ndo, ", 0x%x", *(tptr+4)));
                break;

 case 129:
                if (len < 10)
                    goto invalid;
                ND_PRINT((ndo, ", %s", etheraddr_string(ndo, tptr+4)));
                break;

        default:
            break;
        }
        tptr += len;
    }

    return;

 invalid:
    ND_PRINT((ndo, "%s", istr));
    return;
 trunc:
    ND_PRINT((ndo, "%s", tstr));
}
