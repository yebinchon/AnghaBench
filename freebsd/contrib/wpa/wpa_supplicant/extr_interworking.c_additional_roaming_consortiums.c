
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpa_bss {int dummy; } ;


 int WLAN_EID_ROAMING_CONSORTIUM ;
 scalar_t__* wpa_bss_get_ie (struct wpa_bss*,int ) ;

__attribute__((used)) static int additional_roaming_consortiums(struct wpa_bss *bss)
{
 const u8 *ie;
 ie = wpa_bss_get_ie(bss, WLAN_EID_ROAMING_CONSORTIUM);
 if (ie == ((void*)0) || ie[1] == 0)
  return 0;
 return ie[2];
}
