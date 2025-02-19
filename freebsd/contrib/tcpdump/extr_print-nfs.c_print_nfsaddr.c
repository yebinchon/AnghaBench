
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct ip {int ip_dst; int ip_src; } ;
typedef int srcaddr ;
typedef int netdissect_options ;
typedef int dstaddr ;


 int INET6_ADDRSTRLEN ;
 int IP_V (struct ip const*) ;
 int ND_PRINT (int *) ;
 char* ip6addr_string (int *,int *) ;
 char* ipaddr_string (int *,int *) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
print_nfsaddr(netdissect_options *ndo,
              const u_char *bp, const char *s, const char *d)
{
 const struct ip *ip;
 const struct ip6_hdr *ip6;
 char srcaddr[INET6_ADDRSTRLEN], dstaddr[INET6_ADDRSTRLEN];

 srcaddr[0] = dstaddr[0] = '\0';
 switch (IP_V((const struct ip *)bp)) {
 case 4:
  ip = (const struct ip *)bp;
  strlcpy(srcaddr, ipaddr_string(ndo, &ip->ip_src), sizeof(srcaddr));
  strlcpy(dstaddr, ipaddr_string(ndo, &ip->ip_dst), sizeof(dstaddr));
  break;
 case 6:
  ip6 = (const struct ip6_hdr *)bp;
  strlcpy(srcaddr, ip6addr_string(ndo, &ip6->ip6_src),
      sizeof(srcaddr));
  strlcpy(dstaddr, ip6addr_string(ndo, &ip6->ip6_dst),
      sizeof(dstaddr));
  break;
 default:
  strlcpy(srcaddr, "?", sizeof(srcaddr));
  strlcpy(dstaddr, "?", sizeof(dstaddr));
  break;
 }

 ND_PRINT((ndo, "%s.%s > %s.%s: ", srcaddr, s, dstaddr, d));
}
