
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int dummy; } ;
struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int http_request_get_data (struct http_request*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wps_er_ap* wps_er_ap_get_id (struct wps_er*,unsigned int) ;
 int wps_er_http_resp_not_found (struct http_request*) ;
 int wps_er_http_resp_ok (struct http_request*) ;
 int wps_er_process_wlanevent (struct wps_er_ap*,struct wpabuf*) ;
 struct wpabuf* xml_get_base64_item (int ,char*,int*) ;

__attribute__((used)) static void wps_er_http_event(struct wps_er *er, struct http_request *req,
         unsigned int ap_id)
{
 struct wps_er_ap *ap = wps_er_ap_get_id(er, ap_id);
 struct wpabuf *event;
 enum http_reply_code ret;

 if (ap == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: HTTP event from unknown AP id "
      "%u", ap_id);
  wps_er_http_resp_not_found(req);
  return;
 }
 wpa_printf(MSG_MSGDUMP, "WPS ER: HTTP event from AP id %u: %s",
     ap_id, http_request_get_data(req));

 event = xml_get_base64_item(http_request_get_data(req), "WLANEvent",
        &ret);
 if (event == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: Could not extract WLANEvent "
      "from the event notification");




  wps_er_http_resp_ok(req);
  return;
 }

 wps_er_process_wlanevent(ap, event);

 wpabuf_free(event);
 wps_er_http_resp_ok(req);
}
