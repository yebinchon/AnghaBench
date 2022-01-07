
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int p2p_lo_started; int drv_flags; TYPE_2__* conf; TYPE_1__* global; } ;
struct p2p_data {int dummy; } ;
struct TYPE_4__ {int num_sec_device_types; int sec_device_type; int device_type; } ;
struct TYPE_3__ {struct p2p_data* p2p; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_DRIVER_FLAGS_P2P_LISTEN_OFFLOAD ;
 int WPS_DEV_TYPE_LEN ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 struct wpabuf* p2p_build_probe_resp_template (struct p2p_data*,unsigned int) ;
 int p2p_supported_freq (struct p2p_data*,unsigned int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_drv_p2p_lo_start (struct wpa_supplicant*,unsigned int,unsigned int,unsigned int,unsigned int,int *,size_t,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead_u8 (struct wpabuf*) ;
 int wpas_stop_listen (struct wpa_supplicant*) ;

int wpas_p2p_lo_start(struct wpa_supplicant *wpa_s, unsigned int freq,
        unsigned int period, unsigned int interval,
        unsigned int count)
{
 struct p2p_data *p2p = wpa_s->global->p2p;
 u8 *device_types;
 size_t dev_types_len;
 struct wpabuf *buf;
 int ret;

 if (wpa_s->p2p_lo_started) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P Listen offload is already started");
  return 0;
 }

 if (wpa_s->global->p2p == ((void*)0) ||
     !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_P2P_LISTEN_OFFLOAD)) {
  wpa_printf(MSG_DEBUG, "P2P: Listen offload not supported");
  return -1;
 }

 if (!p2p_supported_freq(wpa_s->global->p2p, freq)) {
  wpa_printf(MSG_ERROR, "P2P: Input channel not supported: %u",
      freq);
  return -1;
 }


 dev_types_len = (wpa_s->conf->num_sec_device_types + 1) *
  WPS_DEV_TYPE_LEN;
 device_types = os_malloc(dev_types_len);
 if (!device_types)
  return -1;
 os_memcpy(device_types, wpa_s->conf->device_type, WPS_DEV_TYPE_LEN);
 os_memcpy(&device_types[WPS_DEV_TYPE_LEN], wpa_s->conf->sec_device_type,
    wpa_s->conf->num_sec_device_types * WPS_DEV_TYPE_LEN);


 buf = p2p_build_probe_resp_template(p2p, freq);
 if (!buf) {
  os_free(device_types);
  return -1;
 }

 ret = wpa_drv_p2p_lo_start(wpa_s, freq, period, interval, count,
       device_types, dev_types_len,
       wpabuf_mhead_u8(buf), wpabuf_len(buf));
 if (ret < 0)
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Failed to start P2P listen offload");

 os_free(device_types);
 wpabuf_free(buf);

 if (ret == 0) {
  wpa_s->p2p_lo_started = 1;


  wpas_stop_listen(wpa_s);
 }

 return ret;
}
