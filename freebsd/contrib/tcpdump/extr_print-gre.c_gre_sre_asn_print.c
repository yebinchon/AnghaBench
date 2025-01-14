
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;

__attribute__((used)) static int
gre_sre_asn_print(netdissect_options *ndo, uint8_t sreoff, uint8_t srelen,
                  const u_char *bp, u_int len)
{
 const u_char *up = bp;

 if (sreoff & 1) {
  ND_PRINT((ndo, ", badoffset=%u", sreoff));
  return (1);
 }
 if (srelen & 1) {
  ND_PRINT((ndo, ", badlength=%u", srelen));
  return (1);
 }
 if (sreoff >= srelen) {
  ND_PRINT((ndo, ", badoff/len=%u/%u", sreoff, srelen));
  return (1);
 }

 while (srelen != 0) {
  if (!ND_TTEST2(*bp, 2))
   return (0);
  if (len < 2)
   return (0);

  ND_PRINT((ndo, " %s%x",
      ((bp - up) == sreoff) ? "*" : "",
      EXTRACT_16BITS(bp)));

  bp += 2;
  len -= 2;
  srelen -= 2;
 }
 return (1);
}
