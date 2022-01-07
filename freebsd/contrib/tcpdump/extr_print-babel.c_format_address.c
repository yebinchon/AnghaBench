
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 char const* ip6addr_string (int *,int const*) ;
 char const* ipaddr_string (int *,int const*) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int v4prefix ;

__attribute__((used)) static const char *
format_address(netdissect_options *ndo, const u_char *prefix)
{
    if(memcmp(prefix, v4prefix, 12) == 0)
        return ipaddr_string(ndo, prefix + 12);
    else
        return ip6addr_string(ndo, prefix);
}
