
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_parse_attr {int e_hash2; int e_hash1; int authenticator; int registrar_nonce; } ;
struct wps_data {scalar_t__ state; int config_error; TYPE_2__* wps; scalar_t__ pbc; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_4__ {TYPE_1__* registrar; } ;
struct TYPE_3__ {scalar_t__ force_pbc_overlap; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M3 ;
 scalar_t__ SEND_M4 ;
 void* SEND_WSC_NACK ;
 int WPS_CFG_MULTIPLE_PBC_DETECTED ;
 int WPS_CONTINUE ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_process_authenticator (struct wps_data*,int ,struct wpabuf const*) ;
 scalar_t__ wps_process_e_hash1 (struct wps_data*,int ) ;
 scalar_t__ wps_process_e_hash2 (struct wps_data*,int ) ;
 scalar_t__ wps_process_registrar_nonce (struct wps_data*,int ) ;
 int wps_registrar_skip_overlap (struct wps_data*) ;

__attribute__((used)) static enum wps_process_res wps_process_m3(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 wpa_printf(MSG_DEBUG, "WPS: Received M3");

 if (wps->state != RECV_M3) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M3", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
     !wps_registrar_skip_overlap(wps)) {
  wpa_printf(MSG_DEBUG, "WPS: Reject negotiation due to PBC "
      "session overlap");
  wps->state = SEND_WSC_NACK;
  wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg) ||
     wps_process_e_hash1(wps, attr->e_hash1) ||
     wps_process_e_hash2(wps, attr->e_hash2)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wps->state = SEND_M4;
 return WPS_CONTINUE;
}
