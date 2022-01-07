
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netinfo6 {int rip6_metric; scalar_t__ rip6_tag; int rip6_plen; int rip6_dest; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (scalar_t__*) ;
 int ND_PRINT (int *) ;
 int ip6addr_string (int *,int *) ;

__attribute__((used)) static int
rip6_entry_print(netdissect_options *ndo, register const struct netinfo6 *ni, int metric)
{
 int l;
 l = ND_PRINT((ndo, "%s/%d", ip6addr_string(ndo, &ni->rip6_dest), ni->rip6_plen));
 if (ni->rip6_tag)
  l += ND_PRINT((ndo, " [%d]", EXTRACT_16BITS(&ni->rip6_tag)));
 if (metric)
  l += ND_PRINT((ndo, " (%d)", ni->rip6_metric));
 return l;
}
