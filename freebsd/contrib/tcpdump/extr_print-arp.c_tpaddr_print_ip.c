
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct arp_pkthdr {int dummy; } ;
typedef int netdissect_options ;


 scalar_t__ ETHERTYPE_IP ;
 scalar_t__ ETHERTYPE_TRAIL ;
 int ND_PRINT (int *) ;
 int PROTO_LEN (struct arp_pkthdr const*) ;
 int TPA (struct arp_pkthdr const*) ;
 int ipaddr_string (int *,int ) ;

__attribute__((used)) static void
tpaddr_print_ip(netdissect_options *ndo,
         const struct arp_pkthdr *ap, u_short pro)
{
 if (pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL)
  ND_PRINT((ndo, "<wrong proto type>"));
 else if (PROTO_LEN(ap) != 4)
  ND_PRINT((ndo, "<wrong len>"));
 else
  ND_PRINT((ndo, "%s", ipaddr_string(ndo, TPA(ap))));
}
