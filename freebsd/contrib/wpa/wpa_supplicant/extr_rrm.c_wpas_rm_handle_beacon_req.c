
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int dst_addr; } ;
struct wpa_driver_scan_params {int duration_mandatory; int only_new_results; size_t num_ssids; TYPE_1__* ssids; void* duration; int freqs; } ;
struct beacon_rep_data {size_t token; int ssid_len; int ssid; int bssid; int report_detail; struct wpa_driver_scan_params scan_params; } ;
struct wpa_supplicant {TYPE_2__ rrm; struct beacon_rep_data beacon_rep_data; } ;
struct rrm_measurement_beacon_request {scalar_t__ mode; size_t* variable; int duration; int channel; int oper_class; int bssid; int rand_interval; } ;
typedef int _rand ;
struct TYPE_3__ {int ssid_len; int ssid; } ;


 int BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS ;
 scalar_t__ BEACON_REPORT_MODE_ACTIVE ;
 scalar_t__ BEACON_REPORT_MODE_PASSIVE ;
 scalar_t__ BEACON_REPORT_MODE_TABLE ;
 int ETH_ALEN ;
 size_t MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE ;
 size_t MEASUREMENT_REPORT_MODE_REJECT_REFUSED ;
 int MEASURE_TYPE_BEACON ;
 int MSG_DEBUG ;
 int eloop_register_timeout (int ,int,int ,struct wpa_supplicant*,int *) ;
 int is_multicast_ether_addr (int ) ;
 void* le_to_host16 (int ) ;
 int os_free (int ) ;
 scalar_t__ os_get_random (size_t*,int) ;
 int os_memcpy (int ,int ,int ) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int os_random () ;
 int wpa_printf (int ,char*) ;
 int wpas_beacon_rep_table (struct wpa_supplicant*,struct wpabuf**) ;
 int wpas_beacon_request_freqs (struct wpa_supplicant*,int ,int ,int,size_t*,size_t) ;
 int wpas_clear_beacon_rep_data (struct wpa_supplicant*) ;
 int wpas_rm_handle_beacon_req_subelem (struct wpa_supplicant*,struct beacon_rep_data*,size_t const,size_t const,size_t const*) ;
 scalar_t__ wpas_rrm_report_elem (struct wpabuf**,size_t,size_t,int ,int *,int ) ;
 int wpas_rrm_scan_timeout ;

__attribute__((used)) static int
wpas_rm_handle_beacon_req(struct wpa_supplicant *wpa_s,
     u8 elem_token, int duration_mandatory,
     const struct rrm_measurement_beacon_request *req,
     size_t len, struct wpabuf **buf)
{
 struct beacon_rep_data *data = &wpa_s->beacon_rep_data;
 struct wpa_driver_scan_params *params = &data->scan_params;
 const u8 *subelems;
 size_t elems_len;
 u16 rand_interval;
 u32 interval_usec;
 u32 _rand;
 int ret = 0, res;
 u8 reject_mode;

 if (len < sizeof(*req))
  return -1;

 if (req->mode != BEACON_REPORT_MODE_PASSIVE &&
     req->mode != BEACON_REPORT_MODE_ACTIVE &&
     req->mode != BEACON_REPORT_MODE_TABLE)
  return 0;

 subelems = req->variable;
 elems_len = len - sizeof(*req);
 rand_interval = le_to_host16(req->rand_interval);

 os_free(params->freqs);
 os_memset(params, 0, sizeof(*params));

 data->token = elem_token;



 data->report_detail = BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS;
 os_memcpy(data->bssid, req->bssid, ETH_ALEN);

 while (elems_len >= 2) {
  if (subelems[1] > elems_len - 2) {
   wpa_printf(MSG_DEBUG,
       "Beacon Request: Truncated subelement");
   ret = -1;
   goto out;
  }

  res = wpas_rm_handle_beacon_req_subelem(
   wpa_s, data, subelems[0], subelems[1], &subelems[2]);
  if (res < 0) {
   ret = res;
   goto out;
  } else if (!res) {
   reject_mode = MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE;
   goto out_reject;
  }

  elems_len -= 2 + subelems[1];
  subelems += 2 + subelems[1];
 }

 if (req->mode == BEACON_REPORT_MODE_TABLE) {
  wpas_beacon_rep_table(wpa_s, buf);
  goto out;
 }

 params->freqs = wpas_beacon_request_freqs(
  wpa_s, req->oper_class, req->channel,
  req->mode == BEACON_REPORT_MODE_ACTIVE,
  req->variable, len - sizeof(*req));
 if (!params->freqs) {
  wpa_printf(MSG_DEBUG, "Beacon request: No valid channels");
  reject_mode = MEASUREMENT_REPORT_MODE_REJECT_REFUSED;
  goto out_reject;
 }

 params->duration = le_to_host16(req->duration);
 params->duration_mandatory = duration_mandatory;
 if (!params->duration) {
  wpa_printf(MSG_DEBUG, "Beacon request: Duration is 0");
  ret = -1;
  goto out;
 }

 params->only_new_results = 1;

 if (req->mode == BEACON_REPORT_MODE_ACTIVE) {
  params->ssids[params->num_ssids].ssid = data->ssid;
  params->ssids[params->num_ssids++].ssid_len = data->ssid_len;
 }

 if (os_get_random((u8 *) &_rand, sizeof(_rand)) < 0)
  _rand = os_random();
 interval_usec = (_rand % (rand_interval + 1)) * 1024;
 eloop_register_timeout(0, interval_usec, wpas_rrm_scan_timeout, wpa_s,
          ((void*)0));
 return 1;
out_reject:
 if (!is_multicast_ether_addr(wpa_s->rrm.dst_addr) &&
     wpas_rrm_report_elem(buf, elem_token, reject_mode,
     MEASURE_TYPE_BEACON, ((void*)0), 0) < 0) {
  wpa_printf(MSG_DEBUG, "RRM: Failed to add report element");
  ret = -1;
 }
out:
 wpas_clear_beacon_rep_data(wpa_s);
 return ret;
}
