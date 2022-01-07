
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct wpa_driver_scan_params {int num_ssids; int freqs; TYPE_1__* ssids; } ;
struct bgscan_simple_data {scalar_t__ scan_interval; scalar_t__ short_interval; scalar_t__ short_scan_count; scalar_t__ max_short_scans; scalar_t__ long_interval; int last_bgscan; TYPE_2__* ssid; struct wpa_supplicant* wpa_s; } ;
typedef int params ;
struct TYPE_4__ {int scan_freq; int ssid_len; int ssid; } ;
struct TYPE_3__ {int ssid_len; int ssid; } ;


 int MSG_DEBUG ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct bgscan_simple_data*,int *) ;
 int os_get_reltime (int *) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_supplicant_trigger_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;

__attribute__((used)) static void bgscan_simple_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct bgscan_simple_data *data = eloop_ctx;
 struct wpa_supplicant *wpa_s = data->wpa_s;
 struct wpa_driver_scan_params params;

 os_memset(&params, 0, sizeof(params));
 params.num_ssids = 1;
 params.ssids[0].ssid = data->ssid->ssid;
 params.ssids[0].ssid_len = data->ssid->ssid_len;
 params.freqs = data->ssid->scan_freq;







 wpa_printf(MSG_DEBUG, "bgscan simple: Request a background scan");
 if (wpa_supplicant_trigger_scan(wpa_s, &params)) {
  wpa_printf(MSG_DEBUG, "bgscan simple: Failed to trigger scan");
  eloop_register_timeout(data->scan_interval, 0,
           bgscan_simple_timeout, data, ((void*)0));
 } else {
  if (data->scan_interval == data->short_interval) {
   data->short_scan_count++;
   if (data->short_scan_count >= data->max_short_scans) {
    data->scan_interval = data->long_interval;
    wpa_printf(MSG_DEBUG, "bgscan simple: Backing "
        "off to long scan interval");
   }
  } else if (data->short_scan_count > 0) {






   data->short_scan_count--;
  }
  os_get_reltime(&data->last_bgscan);
 }
}
