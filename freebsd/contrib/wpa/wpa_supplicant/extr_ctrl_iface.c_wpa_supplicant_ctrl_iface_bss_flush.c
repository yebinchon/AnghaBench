
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int atoi (char*) ;
 int wpa_bss_flush (struct wpa_supplicant*) ;
 int wpa_bss_flush_by_age (struct wpa_supplicant*,int) ;

__attribute__((used)) static void wpa_supplicant_ctrl_iface_bss_flush(
 struct wpa_supplicant *wpa_s, char *cmd)
{
 int flush_age = atoi(cmd);

 if (flush_age == 0)
  wpa_bss_flush(wpa_s);
 else
  wpa_bss_flush_by_age(wpa_s, flush_age);
}
