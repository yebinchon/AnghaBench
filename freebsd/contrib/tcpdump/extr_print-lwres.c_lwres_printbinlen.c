
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (char const*) ;
 int ND_PRINT (TYPE_1__*) ;

__attribute__((used)) static int
lwres_printbinlen(netdissect_options *ndo,
                  const char *p0)
{
 const char *p;
 uint16_t l;
 int i;

 p = p0;
 if (p + 2 > (const char *)ndo->ndo_snapend)
  goto trunc;
 l = EXTRACT_16BITS(p);
 if (p + 2 + l > (const char *)ndo->ndo_snapend)
  goto trunc;
 p += 2;
 for (i = 0; i < l; i++)
  ND_PRINT((ndo, "%02x", *p++));
 return p - p0;

  trunc:
 return -1;
}
