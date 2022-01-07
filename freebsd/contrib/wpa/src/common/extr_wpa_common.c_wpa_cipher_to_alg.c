
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 int WPA_ALG_BIP_CMAC_256 ;
 int WPA_ALG_BIP_GMAC_128 ;
 int WPA_ALG_BIP_GMAC_256 ;
 int WPA_ALG_CCMP ;
 int WPA_ALG_CCMP_256 ;
 int WPA_ALG_GCMP ;
 int WPA_ALG_GCMP_256 ;
 int WPA_ALG_IGTK ;
 int WPA_ALG_NONE ;
 int WPA_ALG_TKIP ;
enum wpa_alg wpa_cipher_to_alg(int cipher)
{
 switch (cipher) {
 case 131:
  return WPA_ALG_CCMP_256;
 case 129:
  return WPA_ALG_GCMP_256;
 case 132:
  return WPA_ALG_CCMP;
 case 130:
  return WPA_ALG_GCMP;
 case 128:
  return WPA_ALG_TKIP;
 case 136:
  return WPA_ALG_IGTK;
 case 134:
  return WPA_ALG_BIP_GMAC_128;
 case 133:
  return WPA_ALG_BIP_GMAC_256;
 case 135:
  return WPA_ALG_BIP_CMAC_256;
 }
 return WPA_ALG_NONE;
}
