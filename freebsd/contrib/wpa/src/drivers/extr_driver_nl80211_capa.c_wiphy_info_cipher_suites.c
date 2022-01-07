
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wiphy_info_data {TYPE_1__* capa; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int enc; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_CAPA_ENC_BIP ;
 int WPA_DRIVER_CAPA_ENC_BIP_CMAC_256 ;
 int WPA_DRIVER_CAPA_ENC_BIP_GMAC_128 ;
 int WPA_DRIVER_CAPA_ENC_BIP_GMAC_256 ;
 int WPA_DRIVER_CAPA_ENC_CCMP ;
 int WPA_DRIVER_CAPA_ENC_CCMP_256 ;
 int WPA_DRIVER_CAPA_ENC_GCMP ;
 int WPA_DRIVER_CAPA_ENC_GCMP_256 ;
 int WPA_DRIVER_CAPA_ENC_GTK_NOT_USED ;
 int WPA_DRIVER_CAPA_ENC_TKIP ;
 int WPA_DRIVER_CAPA_ENC_WEP104 ;
 int WPA_DRIVER_CAPA_ENC_WEP40 ;
 int* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int wpa_printf (int ,char*,int,int,int,int) ;

__attribute__((used)) static void wiphy_info_cipher_suites(struct wiphy_info_data *info,
         struct nlattr *tb)
{
 int i, num;
 u32 *ciphers;

 if (tb == ((void*)0))
  return;

 num = nla_len(tb) / sizeof(u32);
 ciphers = nla_data(tb);
 for (i = 0; i < num; i++) {
  u32 c = ciphers[i];

  wpa_printf(MSG_DEBUG, "nl80211: Supported cipher %02x-%02x-%02x:%d",
      c >> 24, (c >> 16) & 0xff,
      (c >> 8) & 0xff, c & 0xff);
  switch (c) {
  case 134:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_CCMP_256;
   break;
  case 132:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_GCMP_256;
   break;
  case 135:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_CCMP;
   break;
  case 133:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_GCMP;
   break;
  case 130:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_TKIP;
   break;
  case 129:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_WEP104;
   break;
  case 128:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_WEP40;
   break;
  case 139:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_BIP;
   break;
  case 137:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_BIP_GMAC_128;
   break;
  case 136:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_BIP_GMAC_256;
   break;
  case 138:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_BIP_CMAC_256;
   break;
  case 131:
   info->capa->enc |= WPA_DRIVER_CAPA_ENC_GTK_NOT_USED;
   break;
  }
 }
}
