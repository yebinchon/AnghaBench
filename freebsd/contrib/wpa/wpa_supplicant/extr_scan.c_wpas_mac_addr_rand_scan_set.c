
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {unsigned int mac_addr_rand_supported; unsigned int mac_addr_rand_enable; int * mac_addr_pno; int * mac_addr_sched_scan; int * mac_addr_scan; } ;


 int ETH_ALEN ;
 unsigned int MAC_ADDR_RAND_PNO ;
 unsigned int MAC_ADDR_RAND_SCAN ;
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ;
 int MSG_INFO ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int const*,int) ;
 int wpa_printf (int ,char*,unsigned int,...) ;
 int wpas_mac_addr_rand_scan_clear (struct wpa_supplicant*,unsigned int) ;

int wpas_mac_addr_rand_scan_set(struct wpa_supplicant *wpa_s,
    unsigned int type, const u8 *addr,
    const u8 *mask)
{
 u8 *tmp = ((void*)0);

 if ((wpa_s->mac_addr_rand_supported & type) != type ) {
  wpa_printf(MSG_INFO,
      "scan: MAC randomization type %u != supported=%u",
      type, wpa_s->mac_addr_rand_supported);
  return -1;
 }

 wpas_mac_addr_rand_scan_clear(wpa_s, type);

 if (addr) {
  tmp = os_malloc(2 * ETH_ALEN);
  if (!tmp)
   return -1;
  os_memcpy(tmp, addr, ETH_ALEN);
  os_memcpy(tmp + ETH_ALEN, mask, ETH_ALEN);
 }

 if (type == MAC_ADDR_RAND_SCAN) {
  wpa_s->mac_addr_scan = tmp;
 } else if (type == MAC_ADDR_RAND_SCHED_SCAN) {
  wpa_s->mac_addr_sched_scan = tmp;
 } else if (type == MAC_ADDR_RAND_PNO) {
  wpa_s->mac_addr_pno = tmp;
 } else {
  wpa_printf(MSG_INFO,
      "scan: Invalid MAC randomization type=0x%x",
      type);
  os_free(tmp);
  return -1;
 }

 wpa_s->mac_addr_rand_enable |= type;
 return 0;
}
