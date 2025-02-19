
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {scalar_t__ ap_wpa_ie_len; scalar_t__ proto; int key_mgmt; scalar_t__ rsn_enabled; int * ap_rsn_ie; int ap_rsn_ie_len; int * ap_wpa_ie; TYPE_1__* ctx; } ;
struct wpa_eapol_ie_parse {scalar_t__ wpa_ie_len; int rsn_ie_len; int * rsn_ie; int * wpa_ie; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 scalar_t__ WPA_PROTO_WPA ;
 scalar_t__ os_memcmp (int *,int *,scalar_t__) ;
 scalar_t__ wpa_compare_rsn_ie (scalar_t__,int *,int ,int *,int ) ;
 int wpa_dbg (int ,int ,char*) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_report_ie_mismatch (struct wpa_sm*,char*,unsigned char const*,int *,scalar_t__,int *,int ) ;
 scalar_t__ wpa_sm_get_beacon_ie (struct wpa_sm*) ;
 scalar_t__ wpa_supplicant_validate_ie_ft (struct wpa_sm*,unsigned char const*,struct wpa_eapol_ie_parse*) ;

__attribute__((used)) static int wpa_supplicant_validate_ie(struct wpa_sm *sm,
          const unsigned char *src_addr,
          struct wpa_eapol_ie_parse *ie)
{
 if (sm->ap_wpa_ie == ((void*)0) && sm->ap_rsn_ie == ((void*)0)) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: No WPA/RSN IE for this AP known. "
   "Trying to get from scan results");
  if (wpa_sm_get_beacon_ie(sm) < 0) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Could not find AP from "
    "the scan results");
  } else {
   wpa_msg(sm->ctx->msg_ctx, MSG_DEBUG,
    "WPA: Found the current AP from "
    "updated scan results");
  }
 }

 if (ie->wpa_ie == ((void*)0) && ie->rsn_ie == ((void*)0) &&
     (sm->ap_wpa_ie || sm->ap_rsn_ie)) {
  wpa_report_ie_mismatch(sm, "IE in 3/4 msg does not match "
           "with IE in Beacon/ProbeResp (no IE?)",
           src_addr, ie->wpa_ie, ie->wpa_ie_len,
           ie->rsn_ie, ie->rsn_ie_len);
  return -1;
 }

 if ((ie->wpa_ie && sm->ap_wpa_ie &&
      (ie->wpa_ie_len != sm->ap_wpa_ie_len ||
       os_memcmp(ie->wpa_ie, sm->ap_wpa_ie, ie->wpa_ie_len) != 0)) ||
     (ie->rsn_ie && sm->ap_rsn_ie &&
      wpa_compare_rsn_ie(wpa_key_mgmt_ft(sm->key_mgmt),
    sm->ap_rsn_ie, sm->ap_rsn_ie_len,
    ie->rsn_ie, ie->rsn_ie_len))) {
  wpa_report_ie_mismatch(sm, "IE in 3/4 msg does not match "
           "with IE in Beacon/ProbeResp",
           src_addr, ie->wpa_ie, ie->wpa_ie_len,
           ie->rsn_ie, ie->rsn_ie_len);
  return -1;
 }

 if (sm->proto == WPA_PROTO_WPA &&
     ie->rsn_ie && sm->ap_rsn_ie == ((void*)0) && sm->rsn_enabled) {
  wpa_report_ie_mismatch(sm, "Possible downgrade attack "
           "detected - RSN was enabled and RSN IE "
           "was in msg 3/4, but not in "
           "Beacon/ProbeResp",
           src_addr, ie->wpa_ie, ie->wpa_ie_len,
           ie->rsn_ie, ie->rsn_ie_len);
  return -1;
 }







 return 0;
}
