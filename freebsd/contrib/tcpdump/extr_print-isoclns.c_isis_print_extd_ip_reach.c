
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int ;
struct in6_addr {int dummy; } ;
typedef int netdissect_options ;
typedef int ident_buffer ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EXTRACT_32BITS (int const*) ;
 scalar_t__ ISIS_MASK_TLV_EXTD_IP6_IE (int) ;
 scalar_t__ ISIS_MASK_TLV_EXTD_IP6_SUBTLV (int) ;
 scalar_t__ ISIS_MASK_TLV_EXTD_IP_SUBTLV (int) ;
 scalar_t__ ISIS_MASK_TLV_EXTD_IP_UPDOWN (int) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 int ip6addr_string (int *,int *) ;
 int ipaddr_string (int *,int *) ;
 int isis_print_ip_reach_subtlv (int *,int const*,int,int,char*) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
isis_print_extd_ip_reach(netdissect_options *ndo,
                         const uint8_t *tptr, const char *ident, uint16_t afi)
{
    char ident_buffer[20];
    uint8_t prefix[sizeof(struct in6_addr)];
    u_int metric, status_byte, bit_length, byte_length, sublen, processed, subtlvtype, subtlvlen;

    if (!ND_TTEST2(*tptr, 4))
        return (0);
    metric = EXTRACT_32BITS(tptr);
    processed=4;
    tptr+=4;

    if (afi == AF_INET) {
        if (!ND_TTEST2(*tptr, 1))
            return (0);
        status_byte=*(tptr++);
        bit_length = status_byte&0x3f;
        if (bit_length > 32) {
            ND_PRINT((ndo, "%sIPv4 prefix: bad bit length %u",
                   ident,
                   bit_length));
            return (0);
        }
        processed++;
    } else if (afi == AF_INET6) {
        if (!ND_TTEST2(*tptr, 2))
            return (0);
        status_byte=*(tptr++);
        bit_length=*(tptr++);
        if (bit_length > 128) {
            ND_PRINT((ndo, "%sIPv6 prefix: bad bit length %u",
                   ident,
                   bit_length));
            return (0);
        }
        processed+=2;
    } else
        return (0);

    byte_length = (bit_length + 7) / 8;

    if (!ND_TTEST2(*tptr, byte_length))
        return (0);
    memset(prefix, 0, sizeof prefix);
    memcpy(prefix,tptr,byte_length);
    tptr+=byte_length;
    processed+=byte_length;

    if (afi == AF_INET)
        ND_PRINT((ndo, "%sIPv4 prefix: %15s/%u",
               ident,
               ipaddr_string(ndo, prefix),
               bit_length));
    else if (afi == AF_INET6)
        ND_PRINT((ndo, "%sIPv6 prefix: %s/%u",
               ident,
               ip6addr_string(ndo, prefix),
               bit_length));

    ND_PRINT((ndo, ", Distribution: %s, Metric: %u",
           ISIS_MASK_TLV_EXTD_IP_UPDOWN(status_byte) ? "down" : "up",
           metric));

    if (afi == AF_INET && ISIS_MASK_TLV_EXTD_IP_SUBTLV(status_byte))
        ND_PRINT((ndo, ", sub-TLVs present"));
    else if (afi == AF_INET6)
        ND_PRINT((ndo, ", %s%s",
               ISIS_MASK_TLV_EXTD_IP6_IE(status_byte) ? "External" : "Internal",
               ISIS_MASK_TLV_EXTD_IP6_SUBTLV(status_byte) ? ", sub-TLVs present" : ""));

    if ((afi == AF_INET && ISIS_MASK_TLV_EXTD_IP_SUBTLV(status_byte))
     || (afi == AF_INET6 && ISIS_MASK_TLV_EXTD_IP6_SUBTLV(status_byte))
 ) {




        if (!ND_TTEST2(*tptr, 1))
            return (0);
        sublen=*(tptr++);
        processed+=sublen+1;
        ND_PRINT((ndo, " (%u)", sublen));

        while (sublen>0) {
            if (!ND_TTEST2(*tptr,2))
                return (0);
            subtlvtype=*(tptr++);
            subtlvlen=*(tptr++);

            snprintf(ident_buffer, sizeof(ident_buffer), "%s  ",ident);
            if (!isis_print_ip_reach_subtlv(ndo, tptr, subtlvtype, subtlvlen, ident_buffer))
                return(0);
            tptr+=subtlvlen;
            sublen-=(subtlvlen+2);
        }
    }
    return (processed);
}
