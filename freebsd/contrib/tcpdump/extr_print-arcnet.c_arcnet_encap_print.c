
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_9__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_PRINT (TYPE_1__*) ;
 int arp_print (TYPE_1__*,int const*,int ,int ) ;
 int atalk_print (TYPE_1__*,int const*,int ) ;
 int ip6_print (TYPE_1__*,int const*,int ) ;
 int ip_print (TYPE_1__*,int const*,int ) ;
 int ipx_print (TYPE_1__*,int const*,int ) ;

__attribute__((used)) static int
arcnet_encap_print(netdissect_options *ndo, u_char arctype, const u_char *p,
    u_int length, u_int caplen)
{
 switch (arctype) {

 case 129:
 case 131:
         ip_print(ndo, p, length);
  return (1);

 case 132:
  ip6_print(ndo, p, length);
  return (1);

 case 134:
 case 135:
 case 128:
  arp_print(ndo, p, length, caplen);
  return (1);

 case 133:
  if (ndo->ndo_vflag)
   ND_PRINT((ndo, "et1 "));
  atalk_print(ndo, p, length);
  return (1);

 case 130:
  ipx_print(ndo, p, length);
  return (1);

 default:
  return (0);
 }
}
