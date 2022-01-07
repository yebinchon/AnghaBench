
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
typedef int netdissect_options ;





 int ND_PRINT (int *) ;
 int dh4opt_str ;
 int ipaddr_string (int *,scalar_t__ const*) ;
 scalar_t__* ns_nprint (int *,scalar_t__ const*,scalar_t__ const*) ;
 int tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static int
dhcpv4_print(netdissect_options *ndo,
             const u_char *cp, u_int length, int indent)
{
    u_int i, t;
    const u_char *tlv, *value;
    uint8_t type, optlen;

    i = 0;
    while (i < length) {
        if (i + 2 > length)
            return -1;
        tlv = cp + i;
        type = (uint8_t)tlv[0];
        optlen = (uint8_t)tlv[1];
        value = tlv + 2;

        ND_PRINT((ndo, "\n"));
        for (t = indent; t > 0; t--)
            ND_PRINT((ndo, "\t"));

        ND_PRINT((ndo, "%s", tok2str(dh4opt_str, "Unknown", type)));
        ND_PRINT((ndo," (%u)", optlen + 2 ));
        if (i + 2 + optlen > length)
            return -1;

        switch (type) {
        case 130:
        case 128: {
            if (optlen < 4 || optlen % 4 != 0) {
                return -1;
            }
            for (t = 0; t < optlen; t += 4)
                ND_PRINT((ndo, " %s", ipaddr_string(ndo, value + t)));
        }
            break;
        case 129: {
            const u_char *tp = value;
            while (tp < value + optlen) {
                ND_PRINT((ndo, " "));
                if ((tp = ns_nprint(ndo, tp, value + optlen)) == ((void*)0))
                    return -1;
            }
        }
            break;
        }

        i += 2 + optlen;
    }
    return 0;
}
