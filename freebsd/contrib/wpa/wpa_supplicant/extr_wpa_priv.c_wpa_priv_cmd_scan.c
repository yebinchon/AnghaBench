
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_priv_interface {int * drv_priv; TYPE_2__* driver; } ;
struct wpa_driver_scan_params {unsigned int num_ssids; int* freqs; TYPE_1__* ssids; } ;
struct privsep_cmd_scan {unsigned int num_ssids; int num_freqs; int* freqs; int * ssid_lens; int * ssids; } ;
typedef int params ;
struct TYPE_4__ {int (* scan2 ) (int *,struct wpa_driver_scan_params*) ;} ;
struct TYPE_3__ {int ssid_len; int ssid; } ;


 int MSG_DEBUG ;
 int PRIVSEP_MAX_SCAN_FREQS ;
 unsigned int WPAS_MAX_SCAN_SSIDS ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int stub1 (int *,struct wpa_driver_scan_params*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_priv_cmd_scan(struct wpa_priv_interface *iface,
         void *buf, size_t len)
{
 struct wpa_driver_scan_params params;
 struct privsep_cmd_scan *scan;
 unsigned int i;
 int freqs[PRIVSEP_MAX_SCAN_FREQS + 1];

 if (iface->drv_priv == ((void*)0))
  return;

 if (len < sizeof(*scan)) {
  wpa_printf(MSG_DEBUG, "Invalid scan request");
  return;
 }

 scan = buf;

 os_memset(&params, 0, sizeof(params));
 if (scan->num_ssids > WPAS_MAX_SCAN_SSIDS) {
  wpa_printf(MSG_DEBUG, "Invalid scan request (num_ssids)");
  return;
 }
 params.num_ssids = scan->num_ssids;
 for (i = 0; i < scan->num_ssids; i++) {
  params.ssids[i].ssid = scan->ssids[i];
  params.ssids[i].ssid_len = scan->ssid_lens[i];
 }

 if (scan->num_freqs > PRIVSEP_MAX_SCAN_FREQS) {
  wpa_printf(MSG_DEBUG, "Invalid scan request (num_freqs)");
  return;
 }
 if (scan->num_freqs) {
  for (i = 0; i < scan->num_freqs; i++)
   freqs[i] = scan->freqs[i];
  freqs[i] = 0;
  params.freqs = freqs;
 }

 if (iface->driver->scan2)
  iface->driver->scan2(iface->drv_priv, &params);
}
