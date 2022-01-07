
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct lladdr_info {int addr; int (* addr_string ) (TYPE_1__*,int ) ;} ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_DEFAULTPRINT (int const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int stub1 (TYPE_1__*,int ) ;

void
calm_fast_print(netdissect_options *ndo, const u_char *bp, u_int length, const struct lladdr_info *src)
{
 int srcNwref;
 int dstNwref;

 ND_TCHECK2(*bp, 2);
 if (length < 2)
  goto trunc;
 srcNwref = bp[0];
 dstNwref = bp[1];
 length -= 2;
 bp += 2;

 ND_PRINT((ndo, "CALM FAST"));
 if (src != ((void*)0))
  ND_PRINT((ndo, " src:%s", (src->addr_string)(ndo, src->addr)));
 ND_PRINT((ndo, "; "));
 ND_PRINT((ndo, "SrcNwref:%d; ", srcNwref));
 ND_PRINT((ndo, "DstNwref:%d; ", dstNwref));

 if (ndo->ndo_vflag)
  ND_DEFAULTPRINT(bp, length);
 return;

trunc:
 ND_PRINT((ndo, "[|calm fast]"));
 return;
}
