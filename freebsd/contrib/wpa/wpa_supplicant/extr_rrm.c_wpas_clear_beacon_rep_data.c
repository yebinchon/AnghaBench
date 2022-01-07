
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freqs; } ;
struct beacon_rep_data {TYPE_1__ scan_params; int eids; } ;
struct wpa_supplicant {struct beacon_rep_data beacon_rep_data; } ;


 int bitfield_free (int ) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int os_free (int ) ;
 int os_memset (struct beacon_rep_data*,int ,int) ;
 int wpas_rrm_scan_timeout ;

void wpas_clear_beacon_rep_data(struct wpa_supplicant *wpa_s)
{
 struct beacon_rep_data *data = &wpa_s->beacon_rep_data;

 eloop_cancel_timeout(wpas_rrm_scan_timeout, wpa_s, ((void*)0));
 bitfield_free(data->eids);
 os_free(data->scan_params.freqs);
 os_memset(data, 0, sizeof(*data));
}
