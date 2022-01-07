
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int * wps; int * http; } ;
struct wpabuf {int dummy; } ;
struct http_client {int dummy; } ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;






 int MSG_DEBUG ;
 int http_client_free (int *) ;
 struct wpabuf* http_client_get_body (struct http_client*) ;
 int os_free (char*) ;
 int os_memcpy (char*,int ,int ) ;
 char* os_zalloc (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wps_deinit (int *) ;
 int wps_er_ap_process (struct wps_er_ap*,struct wpabuf*) ;
 struct wpabuf* xml_get_base64_item (char*,char*,int*) ;

__attribute__((used)) static void wps_er_http_put_message_cb(void *ctx, struct http_client *c,
           enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;
 struct wpabuf *reply;
 char *msg = ((void*)0);

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: PutMessage OK");
  reply = http_client_get_body(c);
  if (reply)
   msg = os_zalloc(wpabuf_len(reply) + 1);
  if (msg == ((void*)0)) {
   if (ap->wps) {
    wps_deinit(ap->wps);
    ap->wps = ((void*)0);
   }
   break;
  }
  os_memcpy(msg, wpabuf_head(reply), wpabuf_len(reply));
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: PutMessage failed");
  if (ap->wps) {
   wps_deinit(ap->wps);
   ap->wps = ((void*)0);
  }
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);

 if (msg) {
  struct wpabuf *buf;
  enum http_reply_code ret;
  buf = xml_get_base64_item(msg, "NewOutMessage", &ret);
  os_free(msg);
  if (buf == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "WPS ER: Could not extract "
       "NewOutMessage from PutMessage response");
   wps_deinit(ap->wps);
   ap->wps = ((void*)0);
   return;
  }
  wps_er_ap_process(ap, buf);
  wpabuf_free(buf);
 }
}
