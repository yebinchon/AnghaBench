
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
 int af_values ;
 int ip6addr_string (int *,int const*) ;
 int ipaddr_string (int *,int const*) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
cfm_network_addr_print(netdissect_options *ndo,
                       register const u_char *tptr, const u_int length)
{
    u_int network_addr_type;
    u_int hexdump = FALSE;






    if (length < 1) {
        ND_PRINT((ndo, "\n\t  Network Address Type (invalid, no data"));
        return hexdump;
    }

    network_addr_type = *tptr;
    ND_PRINT((ndo, "\n\t  Network Address Type %s (%u)",
           tok2str(af_values, "Unknown", network_addr_type),
           network_addr_type));




    switch(network_addr_type) {
    case 129:
        if (length != 1 + 4) {
            ND_PRINT((ndo, "(invalid IPv4 address length %u)", length - 1));
            hexdump = TRUE;
            break;
        }
        ND_PRINT((ndo, ", %s", ipaddr_string(ndo, tptr + 1)));
        break;

    case 128:
        if (length != 1 + 16) {
            ND_PRINT((ndo, "(invalid IPv6 address length %u)", length - 1));
            hexdump = TRUE;
            break;
        }
        ND_PRINT((ndo, ", %s", ip6addr_string(ndo, tptr + 1)));
        break;

    default:
        hexdump = TRUE;
        break;
    }

    return hexdump;
}
