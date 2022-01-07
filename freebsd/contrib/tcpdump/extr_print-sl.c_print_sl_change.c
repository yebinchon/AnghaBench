
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static const u_char *
print_sl_change(netdissect_options *ndo,
                const char *str, register const u_char *cp)
{
 register u_int i;

 if ((i = *cp++) == 0) {
  i = EXTRACT_16BITS(cp);
  cp += 2;
 }
 ND_PRINT((ndo, " %s%d", str, i));
 return (cp);
}
