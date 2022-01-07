
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int wps_pin_start_time; } ;


 int os_get_reltime (int *) ;
 int wpas_wps_start_dev_pw (struct wpa_supplicant*,int *,int const*,char const*,int,int ,int *,int *,int ,int ) ;

int wpas_wps_start_pin(struct wpa_supplicant *wpa_s, const u8 *bssid,
         const char *pin, int p2p_group, u16 dev_pw_id)
{
 os_get_reltime(&wpa_s->wps_pin_start_time);
 return wpas_wps_start_dev_pw(wpa_s, ((void*)0), bssid, pin, p2p_group,
         dev_pw_id, ((void*)0), ((void*)0), 0, 0);
}
