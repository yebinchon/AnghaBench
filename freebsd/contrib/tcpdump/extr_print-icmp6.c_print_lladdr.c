
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_lladdr(netdissect_options *ndo, const uint8_t *p, size_t l)
{
 const uint8_t *ep, *q;

 q = p;
 ep = p + l;
 while (l > 0 && q < ep) {
  if (q > p)
                        ND_PRINT((ndo,":"));
  ND_PRINT((ndo,"%02x", *q++));
  l--;
 }
}
