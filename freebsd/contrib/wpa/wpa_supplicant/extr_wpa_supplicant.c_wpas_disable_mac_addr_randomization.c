
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ sched_scanning; scalar_t__ pno; } ;


 unsigned int MAC_ADDR_RAND_PNO ;
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ;
 int wpas_mac_addr_rand_scan_clear (struct wpa_supplicant*,unsigned int) ;
 int wpas_scan_restart_sched_scan (struct wpa_supplicant*) ;
 int wpas_start_pno (struct wpa_supplicant*) ;
 int wpas_stop_pno (struct wpa_supplicant*) ;

int wpas_disable_mac_addr_randomization(struct wpa_supplicant *wpa_s,
     unsigned int type)
{
 wpas_mac_addr_rand_scan_clear(wpa_s, type);
 if (wpa_s->pno) {
  if (type & MAC_ADDR_RAND_PNO) {
   wpas_stop_pno(wpa_s);
   wpas_start_pno(wpa_s);
  }
 } else if (wpa_s->sched_scanning && (type & MAC_ADDR_RAND_SCHED_SCAN)) {
  wpas_scan_restart_sched_scan(wpa_s);
 }

 return 0;
}
