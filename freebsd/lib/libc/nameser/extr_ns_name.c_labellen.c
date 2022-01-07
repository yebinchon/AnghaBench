
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DNS_LABELTYPE_BITSTRING ;
 int NS_CMPRSFLGS ;
 int NS_TYPE_ELT ;

__attribute__((used)) static int
labellen(const u_char *lp)
{
 int bitlen;
 u_char l = *lp;

 if ((l & NS_CMPRSFLGS) == NS_CMPRSFLGS) {

  return (-1);
 }

 if ((l & NS_CMPRSFLGS) == NS_TYPE_ELT) {
  if (l == DNS_LABELTYPE_BITSTRING) {
   if ((bitlen = *(lp + 1)) == 0)
    bitlen = 256;
   return ((bitlen + 7 ) / 8 + 1);
  }
  return (-1);
 }
 return (l);
}
