
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_res {int age; int snr; int est_throughput; int tsf; int level; int noise; int qual; int caps; int beacon_int; int freq; int bssid; int flags; } ;
struct wpa_bss {int last_update; int snr; int est_throughput; int tsf; int level; int noise; int qual; int caps; int beacon_int; int freq; int bssid; int flags; } ;
struct os_reltime {int dummy; } ;


 int ETH_ALEN ;
 int calculate_update_time (struct os_reltime*,int ,int *) ;
 int os_memcpy (int ,int ,int ) ;

__attribute__((used)) static void wpa_bss_copy_res(struct wpa_bss *dst, struct wpa_scan_res *src,
        struct os_reltime *fetch_time)
{
 dst->flags = src->flags;
 os_memcpy(dst->bssid, src->bssid, ETH_ALEN);
 dst->freq = src->freq;
 dst->beacon_int = src->beacon_int;
 dst->caps = src->caps;
 dst->qual = src->qual;
 dst->noise = src->noise;
 dst->level = src->level;
 dst->tsf = src->tsf;
 dst->est_throughput = src->est_throughput;
 dst->snr = src->snr;

 calculate_update_time(fetch_time, src->age, &dst->last_update);
}
