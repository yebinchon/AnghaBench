
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct be {int asnlen; TYPE_1__ data; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int ) ;
 int tstr ;

__attribute__((used)) static int
asn1_print_octets(netdissect_options *ndo, struct be *elem)
{
 const u_char *p = (const u_char *)elem->data.raw;
 uint32_t asnlen = elem->asnlen;
 uint32_t i;

 ND_TCHECK2(*p, asnlen);
 for (i = asnlen; i-- > 0; p++)
  ND_PRINT((ndo, "_%.2x", *p));
 return 0;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
