
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;



 int UDLD_EXTRACT_OPCODE (int const) ;
 int UDLD_EXTRACT_VERSION (int const) ;
 int UDLD_HEADER_LEN ;




 int bittok2str (int ,char*,int const) ;
 int fn_printn (TYPE_1__*,int const*,int,int *) ;
 int fn_printzp (TYPE_1__*,int const*,int,int *) ;
 int istr ;
 int tok2str (int ,char*,int) ;
 int tstr ;
 int udld_code_values ;
 int udld_flags_values ;
 int udld_tlv_values ;

void
udld_print (netdissect_options *ndo, const u_char *pptr, u_int length)
{
    int code, type, len;
    const u_char *tptr;

    if (length < UDLD_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    ND_TCHECK2(*tptr, UDLD_HEADER_LEN);

    code = UDLD_EXTRACT_OPCODE(*tptr);

    ND_PRINT((ndo, "UDLDv%u, Code %s (%x), Flags [%s] (0x%02x), length %u",
           UDLD_EXTRACT_VERSION(*tptr),
           tok2str(udld_code_values, "Reserved", code),
           code,
           bittok2str(udld_flags_values, "none", *(tptr+1)),
           *(tptr+1),
           length));




    if (ndo->ndo_vflag < 1) {
 return;
    }

    ND_PRINT((ndo, "\n\tChecksum 0x%04x (unverified)", EXTRACT_16BITS(tptr+2)));

    tptr += UDLD_HEADER_LEN;

    while (tptr < (pptr+length)) {

        ND_TCHECK2(*tptr, 4);
 type = EXTRACT_16BITS(tptr);
        len = EXTRACT_16BITS(tptr+2);

        ND_PRINT((ndo, "\n\t%s (0x%04x) TLV, length %u",
               tok2str(udld_tlv_values, "Unknown", type),
               type, len));

        if (type == 0)
            goto invalid;


        if (len <= 4)
            goto invalid;

        len -= 4;
        tptr += 4;

        ND_TCHECK2(*tptr, len);

        switch (type) {
        case 134:
        case 130:
        case 133:
            ND_PRINT((ndo, ", "));
            fn_printzp(ndo, tptr, len, ((void*)0));
            break;

        case 132:
            ND_PRINT((ndo, ", "));
            (void)fn_printn(ndo, tptr, len, ((void*)0));
            break;

        case 131:
        case 128:
            if (len != 1)
                goto invalid;
            ND_PRINT((ndo, ", %us", (*tptr)));
            break;

        case 129:
            if (len != 4)
                goto invalid;
            ND_PRINT((ndo, ", %u", EXTRACT_32BITS(tptr)));
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
