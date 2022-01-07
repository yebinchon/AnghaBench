
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_hdr {scalar_t__ ip6_nxt; int ip6_dst; int ip6_src; } ;
struct ip {scalar_t__ ip_p; int ip_dst; int ip_src; } ;
typedef int netdissect_options ;


 scalar_t__ IPPROTO_UDP ;
 int IP_V (struct ip const*) ;
 int ND_PRINT (int *) ;
 int ip6addr_string (int *,int *) ;
 int ipaddr_string (int *,int *) ;
 int udpport_string (int *,int) ;

__attribute__((used)) static void
udpipaddr_print(netdissect_options *ndo, const struct ip *ip, int sport, int dport)
{
 const struct ip6_hdr *ip6;

 if (IP_V(ip) == 6)
  ip6 = (const struct ip6_hdr *)ip;
 else
  ip6 = ((void*)0);

 if (ip6) {
  if (ip6->ip6_nxt == IPPROTO_UDP) {
   if (sport == -1) {
    ND_PRINT((ndo, "%s > %s: ",
     ip6addr_string(ndo, &ip6->ip6_src),
     ip6addr_string(ndo, &ip6->ip6_dst)));
   } else {
    ND_PRINT((ndo, "%s.%s > %s.%s: ",
     ip6addr_string(ndo, &ip6->ip6_src),
     udpport_string(ndo, sport),
     ip6addr_string(ndo, &ip6->ip6_dst),
     udpport_string(ndo, dport)));
   }
  } else {
   if (sport != -1) {
    ND_PRINT((ndo, "%s > %s: ",
     udpport_string(ndo, sport),
     udpport_string(ndo, dport)));
   }
  }
 } else {
  if (ip->ip_p == IPPROTO_UDP) {
   if (sport == -1) {
    ND_PRINT((ndo, "%s > %s: ",
     ipaddr_string(ndo, &ip->ip_src),
     ipaddr_string(ndo, &ip->ip_dst)));
   } else {
    ND_PRINT((ndo, "%s.%s > %s.%s: ",
     ipaddr_string(ndo, &ip->ip_src),
     udpport_string(ndo, sport),
     ipaddr_string(ndo, &ip->ip_dst),
     udpport_string(ndo, dport)));
   }
  } else {
   if (sport != -1) {
    ND_PRINT((ndo, "%s > %s: ",
     udpport_string(ndo, sport),
     udpport_string(ndo, dport)));
   }
  }
 }
}
