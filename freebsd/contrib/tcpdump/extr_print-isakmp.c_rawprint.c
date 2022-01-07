
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int ND_TCHECK2 (int const,size_t) ;
 int hexprint (int *,int const*,size_t) ;

__attribute__((used)) static int
rawprint(netdissect_options *ndo, const uint8_t *loc, size_t len)
{
 ND_TCHECK2(*loc, len);

 hexprint(ndo, loc, len);
 return 1;
trunc:
 return 0;
}
