
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int IPV4_MAPPED_HEADING_LEN ;
 char const* ip6addr_string (int *,int const*) ;
 char const* ipaddr_string (int *,int const*) ;
 scalar_t__ is_ipv4_mapped_address (int const*) ;

__attribute__((used)) static const char *
format_ip6addr(netdissect_options *ndo, const u_char *cp)
{
    if (is_ipv4_mapped_address(cp))
        return ipaddr_string(ndo, cp + IPV4_MAPPED_HEADING_LEN);
    else
        return ip6addr_string(ndo, cp);
}
