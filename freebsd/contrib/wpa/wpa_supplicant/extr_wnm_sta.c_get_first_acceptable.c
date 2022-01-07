
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int wnm_num_neighbor_report; struct neighbor_report* wnm_neighbor_report_elements; } ;
struct wpa_bss {int dummy; } ;
struct neighbor_report {int bssid; scalar_t__ acceptable; } ;


 struct wpa_bss* wpa_bss_get_bssid (struct wpa_supplicant*,int ) ;

__attribute__((used)) static struct wpa_bss * get_first_acceptable(struct wpa_supplicant *wpa_s)
{
 unsigned int i;
 struct neighbor_report *nei;

 for (i = 0; i < wpa_s->wnm_num_neighbor_report; i++) {
  nei = &wpa_s->wnm_neighbor_report_elements[i];
  if (nei->acceptable)
   return wpa_bss_get_bssid(wpa_s, nei->bssid);
 }

 return ((void*)0);
}
