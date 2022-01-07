
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int key_mgmt; int pairwise_cipher; scalar_t__ proto; scalar_t__ parent_cred; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {int hs20; } ;


 int HS20_IE_VENDOR_TYPE ;
 int WPA_CIPHER_CCMP ;
 int WPA_KEY_MGMT_IEEE8021X ;
 scalar_t__ WPA_PROTO_RSN ;
 int wpa_bss_get_vendor_ie (struct wpa_bss*,int ) ;

int is_hs20_network(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid,
      struct wpa_bss *bss)
{
 if (!wpa_s->conf->hs20 || !ssid)
  return 0;

 if (ssid->parent_cred)
  return 1;

 if (bss && !wpa_bss_get_vendor_ie(bss, HS20_IE_VENDOR_TYPE))
  return 0;







 if (!(ssid->key_mgmt & WPA_KEY_MGMT_IEEE8021X))
  return 0;
 if (!(ssid->pairwise_cipher & WPA_CIPHER_CCMP))
  return 0;
 if (ssid->proto != WPA_PROTO_RSN)
  return 0;

 return 1;
}
