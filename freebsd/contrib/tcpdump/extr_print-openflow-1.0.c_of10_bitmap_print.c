
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tok {int const v; int * s; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
of10_bitmap_print(netdissect_options *ndo,
                  const struct tok *t, const uint32_t v, const uint32_t u)
{
 const char *sep = " (";

 if (v == 0)
  return;

 for (; t->s != ((void*)0); t++)
  if (v & t->v) {
   ND_PRINT((ndo, "%s%s", sep, t->s));
   sep = ", ";
  }

 ND_PRINT((ndo, v & u ? ") (bogus)" : ")"));
}
