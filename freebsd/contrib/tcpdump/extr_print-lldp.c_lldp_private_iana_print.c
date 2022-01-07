
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int FALSE ;

 int ND_PRINT (int *) ;
 int TRUE ;
 int fn_printn (int *,int const*,int,int *) ;
 int lldp_iana_subtype_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
lldp_private_iana_print(netdissect_options *ndo,
                        const u_char *tptr, u_int tlv_len)
{
    int subtype, hexdump = FALSE;

    if (tlv_len < 8) {
        return hexdump;
    }
    subtype = *(tptr+3);

    ND_PRINT((ndo, "\n\t  %s Subtype (%u)",
           tok2str(lldp_iana_subtype_values, "unknown", subtype),
           subtype));

    switch (subtype) {
    case 128:
        ND_PRINT((ndo, "\n\t  MUD-URL="));
        (void)fn_printn(ndo, tptr+4, tlv_len-4, ((void*)0));
        break;
    default:
        hexdump=TRUE;
    }

    return hexdump;
}
