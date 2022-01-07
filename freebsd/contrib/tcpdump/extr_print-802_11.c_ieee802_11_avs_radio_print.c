
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ieee802_11_print (int *,int const*,int,int,int ,int ) ;
 int tstr ;

__attribute__((used)) static u_int
ieee802_11_avs_radio_print(netdissect_options *ndo,
                           const u_char *p, u_int length, u_int caplen)
{
 uint32_t caphdr_len;

 if (caplen < 8) {
  ND_PRINT((ndo, "%s", tstr));
  return caplen;
 }

 caphdr_len = EXTRACT_32BITS(p + 4);
 if (caphdr_len < 8) {





  ND_PRINT((ndo, "%s", tstr));
  return caplen;
 }

 if (caplen < caphdr_len) {
  ND_PRINT((ndo, "%s", tstr));
  return caplen;
 }

 return caphdr_len + ieee802_11_print(ndo, p + caphdr_len,
     length - caphdr_len, caplen - caphdr_len, 0, 0);
}
