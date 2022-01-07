
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac_addr; } ;
struct wps_data {int state; TYPE_1__ peer_dev; TYPE_2__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ ap; } ;


 int MSG_DEBUG ;
 int RECV_ACK ;
 int WPS_FINISHED ;
 int WPS_WSC_DONE ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;
 int wps_success_event (TYPE_2__*,int ) ;

__attribute__((used)) static struct wpabuf * wps_build_wsc_done(struct wps_data *wps)
{
 struct wpabuf *msg;

 wpa_printf(MSG_DEBUG, "WPS: Building Message WSC_Done");

 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_WSC_DONE) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0, 0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (wps->wps->ap)
  wps->state = RECV_ACK;
 else {
  wps_success_event(wps->wps, wps->peer_dev.mac_addr);
  wps->state = WPS_FINISHED;
 }
 return msg;
}
