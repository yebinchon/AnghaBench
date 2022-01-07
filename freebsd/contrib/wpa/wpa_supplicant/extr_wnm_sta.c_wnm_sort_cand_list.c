
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wnm_num_neighbor_report; int wnm_neighbor_report_elements; } ;
struct neighbor_report {int dummy; } ;


 int cand_pref_compar ;
 int qsort (int ,int ,int,int ) ;

__attribute__((used)) static void wnm_sort_cand_list(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->wnm_neighbor_report_elements)
  return;
 qsort(wpa_s->wnm_neighbor_report_elements,
       wpa_s->wnm_num_neighbor_report, sizeof(struct neighbor_report),
       cand_pref_compar);
}
