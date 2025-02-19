
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int LLDP_INTF_NUM_LEN ;
 int ND_PRINT (int *) ;
 int lldp_intf_numb_subtype_values ;
 char* lldp_network_addr_print (int *,int const*,int) ;
 int safeputs (int *,int const*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
lldp_mgmt_addr_tlv_print(netdissect_options *ndo,
                         const u_char *pptr, u_int len)
{
    uint8_t mgmt_addr_len, intf_num_subtype, oid_len;
    const u_char *tptr;
    u_int tlen;
    char *mgmt_addr;

    tlen = len;
    tptr = pptr;

    if (tlen < 1) {
        return 0;
    }
    mgmt_addr_len = *tptr++;
    tlen--;

    if (tlen < mgmt_addr_len) {
        return 0;
    }

    mgmt_addr = lldp_network_addr_print(ndo, tptr, mgmt_addr_len);
    if (mgmt_addr == ((void*)0)) {
        return 0;
    }
    ND_PRINT((ndo, "\n\t  Management Address length %u, %s",
           mgmt_addr_len, mgmt_addr));
    tptr += mgmt_addr_len;
    tlen -= mgmt_addr_len;

    if (tlen < LLDP_INTF_NUM_LEN) {
        return 0;
    }

    intf_num_subtype = *tptr;
    ND_PRINT((ndo, "\n\t  %s Interface Numbering (%u): %u",
           tok2str(lldp_intf_numb_subtype_values, "Unknown", intf_num_subtype),
           intf_num_subtype,
           EXTRACT_32BITS(tptr + 1)));

    tptr += LLDP_INTF_NUM_LEN;
    tlen -= LLDP_INTF_NUM_LEN;




    if (tlen) {
        oid_len = *tptr;

        if (tlen < 1U + oid_len) {
            return 0;
        }
        if (oid_len) {
            ND_PRINT((ndo, "\n\t  OID length %u", oid_len));
            safeputs(ndo, tptr + 1, oid_len);
        }
    }

    return 1;
}
