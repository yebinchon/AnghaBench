
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_scan_params {size_t num_ssids; int extra_ies_len; int num_filter_ssids; int sched_scan_plans_num; int relative_adjust_rssi; int relative_adjust_band; int relative_rssi; int relative_rssi_set; int * bssid; int * mac_addr_mask; int * mac_addr; scalar_t__ mac_addr_rand; int * sched_scan_plans; int oce_scan; int duration_mandatory; int duration; int low_priority; int only_new_results; int p2p_probe; int filter_rssi; int * filter_ssids; int * freqs; int * extra_ies; TYPE_1__* ssids; } ;
struct TYPE_2__ {int ssid_len; int * ssid; } ;


 int ETH_ALEN ;
 int int_array_len (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int *,int) ;
 void* os_memdup (int *,int) ;
 struct wpa_driver_scan_params* os_zalloc (int) ;
 int wpa_scan_free_params (struct wpa_driver_scan_params*) ;

struct wpa_driver_scan_params *
wpa_scan_clone_params(const struct wpa_driver_scan_params *src)
{
 struct wpa_driver_scan_params *params;
 size_t i;
 u8 *n;

 params = os_zalloc(sizeof(*params));
 if (params == ((void*)0))
  return ((void*)0);

 for (i = 0; i < src->num_ssids; i++) {
  if (src->ssids[i].ssid) {
   n = os_memdup(src->ssids[i].ssid,
          src->ssids[i].ssid_len);
   if (n == ((void*)0))
    goto failed;
   params->ssids[i].ssid = n;
   params->ssids[i].ssid_len = src->ssids[i].ssid_len;
  }
 }
 params->num_ssids = src->num_ssids;

 if (src->extra_ies) {
  n = os_memdup(src->extra_ies, src->extra_ies_len);
  if (n == ((void*)0))
   goto failed;
  params->extra_ies = n;
  params->extra_ies_len = src->extra_ies_len;
 }

 if (src->freqs) {
  int len = int_array_len(src->freqs);
  params->freqs = os_memdup(src->freqs, (len + 1) * sizeof(int));
  if (params->freqs == ((void*)0))
   goto failed;
 }

 if (src->filter_ssids) {
  params->filter_ssids = os_memdup(src->filter_ssids,
       sizeof(*params->filter_ssids) *
       src->num_filter_ssids);
  if (params->filter_ssids == ((void*)0))
   goto failed;
  params->num_filter_ssids = src->num_filter_ssids;
 }

 params->filter_rssi = src->filter_rssi;
 params->p2p_probe = src->p2p_probe;
 params->only_new_results = src->only_new_results;
 params->low_priority = src->low_priority;
 params->duration = src->duration;
 params->duration_mandatory = src->duration_mandatory;
 params->oce_scan = src->oce_scan;

 if (src->sched_scan_plans_num > 0) {
  params->sched_scan_plans =
   os_memdup(src->sched_scan_plans,
      sizeof(*src->sched_scan_plans) *
      src->sched_scan_plans_num);
  if (!params->sched_scan_plans)
   goto failed;

  params->sched_scan_plans_num = src->sched_scan_plans_num;
 }

 if (src->mac_addr_rand) {
  params->mac_addr_rand = src->mac_addr_rand;

  if (src->mac_addr && src->mac_addr_mask) {
   u8 *mac_addr;

   mac_addr = os_malloc(2 * ETH_ALEN);
   if (!mac_addr)
    goto failed;

   os_memcpy(mac_addr, src->mac_addr, ETH_ALEN);
   os_memcpy(mac_addr + ETH_ALEN, src->mac_addr_mask,
      ETH_ALEN);
   params->mac_addr = mac_addr;
   params->mac_addr_mask = mac_addr + ETH_ALEN;
  }
 }

 if (src->bssid) {
  u8 *bssid;

  bssid = os_memdup(src->bssid, ETH_ALEN);
  if (!bssid)
   goto failed;
  params->bssid = bssid;
 }

 params->relative_rssi_set = src->relative_rssi_set;
 params->relative_rssi = src->relative_rssi;
 params->relative_adjust_band = src->relative_adjust_band;
 params->relative_adjust_rssi = src->relative_adjust_rssi;
 return params;

failed:
 wpa_scan_free_params(params);
 return ((void*)0);
}
