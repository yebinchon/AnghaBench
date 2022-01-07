
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 char* ip6addr_string (int *,int const*) ;
 char* ipaddr_string (int *,int const*) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int snprintf (char*,int,char*,char*,unsigned char) ;
 int v4prefix ;

__attribute__((used)) static const char *
format_prefix(netdissect_options *ndo, const u_char *prefix, unsigned char plen)
{
    static char buf[50];
    if(plen >= 96 && memcmp(prefix, v4prefix, 12) == 0)
        snprintf(buf, 50, "%s/%u", ipaddr_string(ndo, prefix + 12), plen - 96);
    else
        snprintf(buf, 50, "%s/%u", ip6addr_string(ndo, prefix), plen);
    buf[49] = '\0';
    return buf;
}
