
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct mld6_hdr {int mld6_addr; int mld6_maxdelay; } ;
struct TYPE_5__ {int * ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ip6addr_string (TYPE_1__*,int *) ;

__attribute__((used)) static void
mld6_print(netdissect_options *ndo, const u_char *bp)
{
 const struct mld6_hdr *mp = (const struct mld6_hdr *)bp;
 const u_char *ep;


 ep = ndo->ndo_snapend;

 if ((const u_char *)mp + sizeof(*mp) > ep)
  return;

 ND_PRINT((ndo,"max resp delay: %d ", EXTRACT_16BITS(&mp->mld6_maxdelay)));
 ND_PRINT((ndo,"addr: %s", ip6addr_string(ndo, &mp->mld6_addr)));
}
