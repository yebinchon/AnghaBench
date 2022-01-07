
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int safeputchar (TYPE_1__*,int ) ;

__attribute__((used)) static int
lwres_printname(netdissect_options *ndo,
                size_t l, const char *p0)
{
 const char *p;
 size_t i;

 p = p0;

 if (p + l + 1 > (const char *)ndo->ndo_snapend)
  goto trunc;

 ND_PRINT((ndo, " "));
 for (i = 0; i < l; i++)
  safeputchar(ndo, *p++);
 p++;

 return p - p0;

  trunc:
 return -1;
}
