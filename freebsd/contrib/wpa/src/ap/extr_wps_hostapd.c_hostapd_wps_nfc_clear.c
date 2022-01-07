
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int * ap_nfc_dev_pw; int * ap_nfc_dh_privkey; int * ap_nfc_dh_pubkey; scalar_t__ ap_nfc_dev_pw_id; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,struct wps_context*) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void hostapd_wps_nfc_clear(struct wps_context *wps)
{
}
