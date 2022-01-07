
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int atoi (char*) ;
 int wpa_supplicant_set_bss_expiration_count (struct wpa_supplicant*,int) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_bss_expire_count(
 struct wpa_supplicant *wpa_s, char *cmd)
{
 int expire_count = atoi(cmd);
 return wpa_supplicant_set_bss_expiration_count(wpa_s, expire_count);
}
