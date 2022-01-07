
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int * parsefh (int *,int const*,int) ;
 int const* parsefn (int *,int const*) ;

__attribute__((used)) static const uint32_t *
parsefhn(netdissect_options *ndo,
         register const uint32_t *dp, int v3)
{
 dp = parsefh(ndo, dp, v3);
 if (dp == ((void*)0))
  return (((void*)0));
 ND_PRINT((ndo, " "));
 return (parsefn(ndo, dp));
}
