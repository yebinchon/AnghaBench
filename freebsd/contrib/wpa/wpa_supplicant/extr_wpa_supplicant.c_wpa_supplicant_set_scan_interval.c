
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,int) ;
 int wpa_supplicant_update_scan_int (struct wpa_supplicant*,int) ;

int wpa_supplicant_set_scan_interval(struct wpa_supplicant *wpa_s,
         int scan_interval)
{
 if (scan_interval < 0) {
  wpa_msg(wpa_s, MSG_ERROR, "Invalid scan interval %d",
   scan_interval);
  return -1;
 }
 wpa_msg(wpa_s, MSG_DEBUG, "Setting scan interval: %d sec",
  scan_interval);
 wpa_supplicant_update_scan_int(wpa_s, scan_interval);

 return 0;
}
