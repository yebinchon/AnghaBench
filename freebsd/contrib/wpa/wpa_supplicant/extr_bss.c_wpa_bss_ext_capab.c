
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int dummy; } ;


 int WLAN_EID_EXT_CAPAB ;
 int ieee802_11_ext_capab (int ,unsigned int) ;
 int wpa_bss_get_ie (struct wpa_bss const*,int ) ;

int wpa_bss_ext_capab(const struct wpa_bss *bss, unsigned int capab)
{
 return ieee802_11_ext_capab(wpa_bss_get_ie(bss, WLAN_EID_EXT_CAPAB),
        capab);
}
