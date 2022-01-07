
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int mac_addr_rand_enable; int * mac_addr_pno; int * mac_addr_sched_scan; int * mac_addr_scan; } ;


 unsigned int MAC_ADDR_RAND_ALL ;
 unsigned int MAC_ADDR_RAND_PNO ;
 unsigned int MAC_ADDR_RAND_SCAN ;
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ;
 int os_free (int *) ;

void wpas_mac_addr_rand_scan_clear(struct wpa_supplicant *wpa_s,
        unsigned int type)
{
 type &= MAC_ADDR_RAND_ALL;
 wpa_s->mac_addr_rand_enable &= ~type;

 if (type & MAC_ADDR_RAND_SCAN) {
  os_free(wpa_s->mac_addr_scan);
  wpa_s->mac_addr_scan = ((void*)0);
 }

 if (type & MAC_ADDR_RAND_SCHED_SCAN) {
  os_free(wpa_s->mac_addr_sched_scan);
  wpa_s->mac_addr_sched_scan = ((void*)0);
 }

 if (type & MAC_ADDR_RAND_PNO) {
  os_free(wpa_s->mac_addr_pno);
  wpa_s->mac_addr_pno = ((void*)0);
 }
}
