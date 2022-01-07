
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;
typedef unsigned int int32_t ;


 unsigned int INT32_MIN ;
 int ND_PRINT (int *) ;
 int unsigned_relts_print (int *,unsigned int) ;

void
signed_relts_print(netdissect_options *ndo,
                   int32_t secs)
{
 if (secs < 0) {
  ND_PRINT((ndo, "-"));
  if (secs == INT32_MIN) {
   unsigned_relts_print(ndo, 2147483648U);
  } else {




   unsigned_relts_print(ndo, -secs);
  }
  return;
 }
 unsigned_relts_print(ndo, secs);
}
