
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_channel_info {int dummy; } ;


 int wpa_drv_channel_info (struct wpa_supplicant*,struct wpa_channel_info*) ;

__attribute__((used)) static int wpa_supplicant_channel_info(void *_wpa_s,
           struct wpa_channel_info *ci)
{
 struct wpa_supplicant *wpa_s = _wpa_s;

 return wpa_drv_channel_info(wpa_s, ci);
}
