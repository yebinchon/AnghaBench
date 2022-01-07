
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
hexprint(netdissect_options *ndo, const uint8_t *loc, size_t len)
{
 const uint8_t *p;
 size_t i;

 p = loc;
 for (i = 0; i < len; i++)
  ND_PRINT((ndo,"%02x", p[i] & 0xff));
}
