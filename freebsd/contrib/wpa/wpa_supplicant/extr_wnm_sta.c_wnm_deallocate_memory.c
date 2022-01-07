
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int wnm_num_neighbor_report; int * coloc_intf_elems; TYPE_1__* wnm_neighbor_report_elements; } ;
struct TYPE_2__ {struct TYPE_2__* mul_bssid; struct TYPE_2__* meas_pilot; } ;


 int os_free (TYPE_1__*) ;
 int wpabuf_free (int *) ;

void wnm_deallocate_memory(struct wpa_supplicant *wpa_s)
{
 int i;

 for (i = 0; i < wpa_s->wnm_num_neighbor_report; i++) {
  os_free(wpa_s->wnm_neighbor_report_elements[i].meas_pilot);
  os_free(wpa_s->wnm_neighbor_report_elements[i].mul_bssid);
 }

 wpa_s->wnm_num_neighbor_report = 0;
 os_free(wpa_s->wnm_neighbor_report_elements);
 wpa_s->wnm_neighbor_report_elements = ((void*)0);

 wpabuf_free(wpa_s->coloc_intf_elems);
 wpa_s->coloc_intf_elems = ((void*)0);
}
