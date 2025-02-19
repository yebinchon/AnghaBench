
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {scalar_t__ pno; scalar_t__ sched_scanning; } ;


 unsigned int MAC_ADDR_RAND_PNO ;
 unsigned int MAC_ADDR_RAND_SCAN ;
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ;
 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpas_mac_addr_rand_scan_set (struct wpa_supplicant*,unsigned int,int const*,int const*) ;
 int wpas_scan_restart_sched_scan (struct wpa_supplicant*) ;
 int wpas_start_pno (struct wpa_supplicant*) ;
 int wpas_stop_pno (struct wpa_supplicant*) ;

int wpas_enable_mac_addr_randomization(struct wpa_supplicant *wpa_s,
           unsigned int type, const u8 *addr,
           const u8 *mask)
{
 if ((addr && !mask) || (!addr && mask)) {
  wpa_printf(MSG_INFO,
      "MAC_ADDR_RAND_SCAN invalid addr/mask combination");
  return -1;
 }

 if (addr && mask && (!(mask[0] & 0x01) || (addr[0] & 0x01))) {
  wpa_printf(MSG_INFO,
      "MAC_ADDR_RAND_SCAN cannot allow multicast address");
  return -1;
 }

 if (type & MAC_ADDR_RAND_SCAN) {
  if (wpas_mac_addr_rand_scan_set(wpa_s, MAC_ADDR_RAND_SCAN,
      addr, mask))
   return -1;
 }

 if (type & MAC_ADDR_RAND_SCHED_SCAN) {
  if (wpas_mac_addr_rand_scan_set(wpa_s, MAC_ADDR_RAND_SCHED_SCAN,
      addr, mask))
   return -1;

  if (wpa_s->sched_scanning && !wpa_s->pno)
   wpas_scan_restart_sched_scan(wpa_s);
 }

 if (type & MAC_ADDR_RAND_PNO) {
  if (wpas_mac_addr_rand_scan_set(wpa_s, MAC_ADDR_RAND_PNO,
      addr, mask))
   return -1;

  if (wpa_s->pno) {
   wpas_stop_pno(wpa_s);
   wpas_start_pno(wpa_s);
  }
 }

 return 0;
}
