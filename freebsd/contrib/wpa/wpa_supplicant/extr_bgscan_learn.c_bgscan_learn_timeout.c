
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct wpa_driver_scan_params {int num_ssids; int* freqs; TYPE_1__* ssids; } ;
struct bgscan_learn_data {int last_bgscan; int scan_interval; TYPE_2__* ssid; struct wpa_supplicant* wpa_s; } ;
typedef int params ;
typedef int msg ;
struct TYPE_4__ {int* scan_freq; int ssid_len; int ssid; } ;
struct TYPE_3__ {int ssid_len; int ssid; } ;


 int MSG_DEBUG ;
 int* bgscan_learn_get_freqs (struct bgscan_learn_data*,size_t*) ;
 int* bgscan_learn_get_probe_freq (struct bgscan_learn_data*,int*,size_t) ;
 int eloop_register_timeout (int ,int ,void (*) (void*,void*),struct bgscan_learn_data*,int *) ;
 int os_free (int*) ;
 int os_get_reltime (int *) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int os_snprintf (char*,int,char*,int) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_supplicant_trigger_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;

__attribute__((used)) static void bgscan_learn_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct bgscan_learn_data *data = eloop_ctx;
 struct wpa_supplicant *wpa_s = data->wpa_s;
 struct wpa_driver_scan_params params;
 int *freqs = ((void*)0);
 size_t count, i;
 char msg[100], *pos;

 os_memset(&params, 0, sizeof(params));
 params.num_ssids = 1;
 params.ssids[0].ssid = data->ssid->ssid;
 params.ssids[0].ssid_len = data->ssid->ssid_len;
 if (data->ssid->scan_freq)
  params.freqs = data->ssid->scan_freq;
 else {
  freqs = bgscan_learn_get_freqs(data, &count);
  wpa_printf(MSG_DEBUG, "bgscan learn: BSSes in this ESS have "
      "been seen on %u channels", (unsigned int) count);
  freqs = bgscan_learn_get_probe_freq(data, freqs, count);

  msg[0] = '\0';
  pos = msg;
  for (i = 0; freqs && freqs[i]; i++) {
   int ret;
   ret = os_snprintf(pos, msg + sizeof(msg) - pos, " %d",
       freqs[i]);
   if (os_snprintf_error(msg + sizeof(msg) - pos, ret))
    break;
   pos += ret;
  }
  pos[0] = '\0';
  wpa_printf(MSG_DEBUG, "bgscan learn: Scanning frequencies:%s",
      msg);
  params.freqs = freqs;
 }

 wpa_printf(MSG_DEBUG, "bgscan learn: Request a background scan");
 if (wpa_supplicant_trigger_scan(wpa_s, &params)) {
  wpa_printf(MSG_DEBUG, "bgscan learn: Failed to trigger scan");
  eloop_register_timeout(data->scan_interval, 0,
           bgscan_learn_timeout, data, ((void*)0));
 } else
  os_get_reltime(&data->last_bgscan);
 os_free(freqs);
}
