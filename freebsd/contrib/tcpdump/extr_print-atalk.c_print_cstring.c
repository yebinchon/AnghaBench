
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int tstr ;

__attribute__((used)) static const char *
print_cstring(netdissect_options *ndo,
              register const char *cp, register const u_char *ep)
{
 register u_int length;

 if (cp >= (const char *)ep) {
  ND_PRINT((ndo, "%s", tstr));
  return (0);
 }
 length = *cp++;


 if (length > 32) {
  ND_PRINT((ndo, "[len=%u]", length));
  return (0);
 }
 while ((int)--length >= 0) {
  if (cp >= (const char *)ep) {
   ND_PRINT((ndo, "%s", tstr));
   return (0);
  }
  ND_PRINT((ndo, "%c", *cp++));
 }
 return (cp);
}
