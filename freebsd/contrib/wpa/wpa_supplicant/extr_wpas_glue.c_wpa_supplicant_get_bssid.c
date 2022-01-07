
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int wpa_drv_get_bssid (struct wpa_supplicant*,int *) ;

__attribute__((used)) static int wpa_supplicant_get_bssid(void *ctx, u8 *bssid)
{
 struct wpa_supplicant *wpa_s = ctx;
 return wpa_drv_get_bssid(wpa_s, bssid);
}
