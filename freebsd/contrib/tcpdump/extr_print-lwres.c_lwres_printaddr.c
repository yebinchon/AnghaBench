
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int netdissect_options ;
struct TYPE_3__ {int family; int length; } ;
typedef TYPE_1__ lwres_addr_t ;


 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int ND_TCHECK2 (char const,int) ;
 int ip6addr_string (int *,char const*) ;
 int ipaddr_string (int *,char const*) ;

__attribute__((used)) static int
lwres_printaddr(netdissect_options *ndo,
                const lwres_addr_t *ap)
{
 uint16_t l;
 const char *p;
 int i;

 ND_TCHECK(ap->length);
 l = EXTRACT_16BITS(&ap->length);

 p = (const char *)&ap->length + sizeof(ap->length);
 ND_TCHECK2(*p, l);

 switch (EXTRACT_32BITS(&ap->family)) {
 case 1:
  if (l < 4)
   return -1;
  ND_PRINT((ndo, " %s", ipaddr_string(ndo, p)));
  p += sizeof(struct in_addr);
  break;
 case 2:
  if (l < 16)
   return -1;
  ND_PRINT((ndo, " %s", ip6addr_string(ndo, p)));
  p += sizeof(struct in6_addr);
  break;
 default:
  ND_PRINT((ndo, " %u/", EXTRACT_32BITS(&ap->family)));
  for (i = 0; i < l; i++)
   ND_PRINT((ndo, "%02x", *p++));
 }

 return p - (const char *)ap;

  trunc:
 return -1;
}
