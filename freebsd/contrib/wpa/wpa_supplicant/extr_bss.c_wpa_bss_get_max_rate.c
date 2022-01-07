
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_bss {int dummy; } ;


 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_SUPP_RATES ;
 int* wpa_bss_get_ie (struct wpa_bss const*,int ) ;

int wpa_bss_get_max_rate(const struct wpa_bss *bss)
{
 int rate = 0;
 const u8 *ie;
 int i;

 ie = wpa_bss_get_ie(bss, WLAN_EID_SUPP_RATES);
 for (i = 0; ie && i < ie[1]; i++) {
  if ((ie[i + 2] & 0x7f) > rate)
   rate = ie[i + 2] & 0x7f;
 }

 ie = wpa_bss_get_ie(bss, WLAN_EID_EXT_SUPP_RATES);
 for (i = 0; ie && i < ie[1]; i++) {
  if ((ie[i + 2] & 0x7f) > rate)
   rate = ie[i + 2] & 0x7f;
 }

 return rate;
}
