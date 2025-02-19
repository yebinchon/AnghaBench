
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct atmarp_pkthdr {int dummy; } ;
typedef int netdissect_options ;


 int ATMTPA (struct atmarp_pkthdr const*) ;
 int ATMTPROTO_LEN (struct atmarp_pkthdr const*) ;
 scalar_t__ ETHERTYPE_IP ;
 scalar_t__ ETHERTYPE_TRAIL ;
 int ND_PRINT (int *) ;
 int ipaddr_string (int *,int ) ;

__attribute__((used)) static void
atmarp_tpaddr_print(netdissect_options *ndo,
      const struct atmarp_pkthdr *ap, u_short pro)
{
 if (pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL)
  ND_PRINT((ndo, "<wrong proto type>"));
 else if (ATMTPROTO_LEN(ap) != 4)
  ND_PRINT((ndo, "<wrong tplen>"));
 else
  ND_PRINT((ndo, "%s", ipaddr_string(ndo, ATMTPA(ap))));
}
