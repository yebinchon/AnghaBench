
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct atNBPtuple {int dummy; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int nbpTupleSize ;
 char* print_cstring (int *,char const*,int const*) ;

__attribute__((used)) static const struct atNBPtuple *
nbp_name_print(netdissect_options *ndo,
               const struct atNBPtuple *tp, register const u_char *ep)
{
 register const char *cp = (const char *)tp + nbpTupleSize;

 ND_PRINT((ndo, " "));


 ND_PRINT((ndo, "\""));
 if ((cp = print_cstring(ndo, cp, ep)) != ((void*)0)) {

  ND_PRINT((ndo, ":"));
  if ((cp = print_cstring(ndo, cp, ep)) != ((void*)0)) {

   ND_PRINT((ndo, "@"));
   if ((cp = print_cstring(ndo, cp, ep)) != ((void*)0))
    ND_PRINT((ndo, "\""));
  }
 }
 return ((const struct atNBPtuple *)cp);
}
