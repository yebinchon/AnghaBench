
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int ap_rsn_ie_len; int ap_rsn_ie; int ocv; } ;
struct wpa_ie_data {int capabilities; } ;


 int WPA_CAPABILITY_OCVC ;
 scalar_t__ wpa_parse_wpa_ie_rsn (int ,int ,struct wpa_ie_data*) ;

int wpa_sm_ocv_enabled(struct wpa_sm *sm)
{
 struct wpa_ie_data rsn;

 if (!sm->ocv || !sm->ap_rsn_ie)
  return 0;

 return wpa_parse_wpa_ie_rsn(sm->ap_rsn_ie, sm->ap_rsn_ie_len,
        &rsn) >= 0 &&
  (rsn.capabilities & WPA_CAPABILITY_OCVC);
}
