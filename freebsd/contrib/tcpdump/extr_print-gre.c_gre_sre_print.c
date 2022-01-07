
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;




 int ND_PRINT (int *) ;
 int gre_sre_asn_print (int *,int ,int ,int const*,int ) ;
 int gre_sre_ip_print (int *,int ,int ,int const*,int ) ;

__attribute__((used)) static int
gre_sre_print(netdissect_options *ndo, uint16_t af, uint8_t sreoff,
    uint8_t srelen, const u_char *bp, u_int len)
{
 int ret;

 switch (af) {
 case 128:
  ND_PRINT((ndo, ", (rtaf=ip"));
  ret = gre_sre_ip_print(ndo, sreoff, srelen, bp, len);
  ND_PRINT((ndo, ")"));
  break;
 case 129:
  ND_PRINT((ndo, ", (rtaf=asn"));
  ret = gre_sre_asn_print(ndo, sreoff, srelen, bp, len);
  ND_PRINT((ndo, ")"));
  break;
 default:
  ND_PRINT((ndo, ", (rtaf=0x%x)", af));
  ret = 1;
 }
 return (ret);
}
