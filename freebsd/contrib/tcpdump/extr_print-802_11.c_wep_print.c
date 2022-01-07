
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_LE_32BITS (int const*) ;
 scalar_t__ IEEE802_11_IV_LEN ;
 scalar_t__ IEEE802_11_KID_LEN ;
 int IV_IV (int ) ;
 int IV_KEYID (int ) ;
 int IV_PAD (int ) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,scalar_t__) ;

__attribute__((used)) static int
wep_print(netdissect_options *ndo,
          const u_char *p)
{
 uint32_t iv;

 if (!ND_TTEST2(*p, IEEE802_11_IV_LEN + IEEE802_11_KID_LEN))
  return 0;
 iv = EXTRACT_LE_32BITS(p);

 ND_PRINT((ndo, " IV:%3x Pad %x KeyID %x", IV_IV(iv), IV_PAD(iv),
     IV_KEYID(iv)));

 return 1;
}
