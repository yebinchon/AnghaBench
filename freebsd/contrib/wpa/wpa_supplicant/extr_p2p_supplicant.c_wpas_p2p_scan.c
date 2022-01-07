
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_3__* global; TYPE_2__* wps; scalar_t__ p2p_scan_work; } ;
struct wpa_driver_scan_params {int num_ssids; int* freqs; int p2p_probe; size_t* extra_ies; void* extra_ies_len; TYPE_1__* ssids; } ;
typedef enum p2p_scan_type { ____Placeholder_p2p_scan_type } p2p_scan_type ;
struct TYPE_8__ {int p2p; } ;
struct TYPE_7__ {int * p2p; scalar_t__ p2p_disabled; } ;
struct TYPE_6__ {int uuid; TYPE_4__ dev; } ;
struct TYPE_5__ {size_t* ssid; void* ssid_len; } ;


 size_t ARRAY_SIZE (int*) ;
 int MSG_INFO ;




 int P2P_WILDCARD_SSID ;
 void* P2P_WILDCARD_SSID_LEN ;
 int WPS_REQ_ENROLLEE ;
 void* os_calloc (int,int) ;
 size_t* os_malloc (void*) ;
 int os_memcpy (size_t*,int ,void*) ;
 struct wpa_driver_scan_params* os_zalloc (int) ;
 int p2p_scan_ie (int *,struct wpabuf*,size_t const*,unsigned int) ;
 size_t p2p_scan_ie_buf_len (int *) ;
 int p2p_supported_freq (int *,int) ;
 scalar_t__ radio_add_work (struct wpa_supplicant*,int ,char*,int ,int ,struct wpa_driver_scan_params*) ;
 int radio_remove_works (struct wpa_supplicant*,char*,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_scan_free_params (struct wpa_driver_scan_params*) ;
 struct wpabuf* wpabuf_alloc (void*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 void* wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 unsigned int wpas_get_bands (struct wpa_supplicant*,int*) ;
 int wpas_p2p_search_social_channel (struct wpa_supplicant*,int) ;
 int wpas_p2p_trigger_scan_cb ;
 struct wpabuf* wps_build_probe_req_ie (int ,TYPE_4__*,int ,int ,unsigned int,size_t const*) ;

__attribute__((used)) static int wpas_p2p_scan(void *ctx, enum p2p_scan_type type, int freq,
    unsigned int num_req_dev_types,
    const u8 *req_dev_types, const u8 *dev_id, u16 pw_id)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct wpa_driver_scan_params *params = ((void*)0);
 struct wpabuf *wps_ie, *ies;
 unsigned int num_channels = 0;
 int social_channels_freq[] = { 2412, 2437, 2462, 60480 };
 size_t ielen;
 u8 *n, i;
 unsigned int bands;

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;

 if (wpa_s->p2p_scan_work) {
  wpa_dbg(wpa_s, MSG_INFO, "P2P: Reject scan trigger since one is already pending");
  return -1;
 }

 params = os_zalloc(sizeof(*params));
 if (params == ((void*)0))
  return -1;


 params->num_ssids = 1;
 n = os_malloc(P2P_WILDCARD_SSID_LEN);
 if (n == ((void*)0))
  goto fail;
 os_memcpy(n, P2P_WILDCARD_SSID, P2P_WILDCARD_SSID_LEN);
 params->ssids[0].ssid = n;
 params->ssids[0].ssid_len = P2P_WILDCARD_SSID_LEN;

 wpa_s->wps->dev.p2p = 1;
 wps_ie = wps_build_probe_req_ie(pw_id, &wpa_s->wps->dev,
     wpa_s->wps->uuid, WPS_REQ_ENROLLEE,
     num_req_dev_types, req_dev_types);
 if (wps_ie == ((void*)0))
  goto fail;

 switch (type) {
 case 130:
  params->freqs = os_calloc(ARRAY_SIZE(social_channels_freq) + 1,
       sizeof(int));
  if (params->freqs == ((void*)0))
   goto fail;
  for (i = 0; i < ARRAY_SIZE(social_channels_freq); i++) {
   if (wpas_p2p_search_social_channel(
        wpa_s, social_channels_freq[i]))
    params->freqs[num_channels++] =
     social_channels_freq[i];
  }
  params->freqs[num_channels++] = 0;
  break;
 case 131:
  break;
 case 128:
  params->freqs = os_calloc(2, sizeof(int));
  if (params->freqs == ((void*)0))
   goto fail;
  params->freqs[0] = freq;
  params->freqs[1] = 0;
  break;
 case 129:
  params->freqs = os_calloc(ARRAY_SIZE(social_channels_freq) + 2,
       sizeof(int));
  if (params->freqs == ((void*)0))
   goto fail;
  for (i = 0; i < ARRAY_SIZE(social_channels_freq); i++) {
   if (wpas_p2p_search_social_channel(
        wpa_s, social_channels_freq[i]))
    params->freqs[num_channels++] =
     social_channels_freq[i];
  }
  if (p2p_supported_freq(wpa_s->global->p2p, freq))
   params->freqs[num_channels++] = freq;
  params->freqs[num_channels++] = 0;
  break;
 }

 ielen = p2p_scan_ie_buf_len(wpa_s->global->p2p);
 ies = wpabuf_alloc(wpabuf_len(wps_ie) + ielen);
 if (ies == ((void*)0)) {
  wpabuf_free(wps_ie);
  goto fail;
 }
 wpabuf_put_buf(ies, wps_ie);
 wpabuf_free(wps_ie);

 bands = wpas_get_bands(wpa_s, params->freqs);
 p2p_scan_ie(wpa_s->global->p2p, ies, dev_id, bands);

 params->p2p_probe = 1;
 n = os_malloc(wpabuf_len(ies));
 if (n == ((void*)0)) {
  wpabuf_free(ies);
  goto fail;
 }
 os_memcpy(n, wpabuf_head(ies), wpabuf_len(ies));
 params->extra_ies = n;
 params->extra_ies_len = wpabuf_len(ies);
 wpabuf_free(ies);

 radio_remove_works(wpa_s, "p2p-scan", 0);
 if (radio_add_work(wpa_s, 0, "p2p-scan", 0, wpas_p2p_trigger_scan_cb,
      params) < 0)
  goto fail;
 return 0;

fail:
 wpa_scan_free_params(params);
 return -1;
}
