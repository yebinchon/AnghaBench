
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 short EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static const u_char *
print_sl_winchange(netdissect_options *ndo,
                   register const u_char *cp)
{
 register short i;

 if ((i = *cp++) == 0) {
  i = EXTRACT_16BITS(cp);
  cp += 2;
 }
 if (i >= 0)
  ND_PRINT((ndo, " W+%d", i));
 else
  ND_PRINT((ndo, " W%d", i));
 return (cp);
}
