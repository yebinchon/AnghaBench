
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int wps_pin_revealed; int state; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int RECV_M7 ;
 int WPS_M6 ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_authenticator (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_encr_settings (struct wps_data*,struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_key_wrap_auth (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_r_snonce2 (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;

__attribute__((used)) static struct wpabuf * wps_build_m6(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 wpa_printf(MSG_DEBUG, "WPS: Building Message M6");

 plain = wpabuf_alloc(200);
 if (plain == ((void*)0))
  return ((void*)0);

 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0)) {
  wpabuf_free(plain);
  return ((void*)0);
 }

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M6) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_r_snonce2(wps, plain) ||
     wps_build_key_wrap_auth(wps, plain) ||
     wps_build_encr_settings(wps, msg, plain) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0, 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_clear_free(plain);
  wpabuf_free(msg);
  return ((void*)0);
 }
 wpabuf_clear_free(plain);

 wps->wps_pin_revealed = 1;
 wps->state = RECV_M7;
 return msg;
}
