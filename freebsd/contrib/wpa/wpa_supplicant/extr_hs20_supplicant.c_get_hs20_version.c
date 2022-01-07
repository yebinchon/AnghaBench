
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_bss {int dummy; } ;


 int HS20_IE_VENDOR_TYPE ;
 int* wpa_bss_get_vendor_ie (struct wpa_bss*,int ) ;

int get_hs20_version(struct wpa_bss *bss)
{
 const u8 *ie;

 if (!bss)
  return 0;

 ie = wpa_bss_get_vendor_ie(bss, HS20_IE_VENDOR_TYPE);
 if (!ie || ie[1] < 5)
  return 0;

 return ((ie[6] >> 4) & 0x0f) + 1;
}
