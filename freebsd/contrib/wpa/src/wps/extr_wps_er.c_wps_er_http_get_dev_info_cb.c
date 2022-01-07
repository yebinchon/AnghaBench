
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int * http; } ;
struct wpabuf {int dummy; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;






 int MSG_DEBUG ;
 int http_client_free (int *) ;
 struct wpabuf* http_client_get_body (struct http_client*) ;
 int os_free (char*) ;
 int os_memcpy (char*,int ,int ) ;
 char* os_zalloc (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wps_er_ap_learn (struct wps_er_ap*,char*) ;

__attribute__((used)) static void wps_er_http_get_dev_info_cb(void *ctx, struct http_client *c,
     enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;
 struct wpabuf *reply;
 char *dev_info = ((void*)0);

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: GetDeviceInfo OK");
  reply = http_client_get_body(c);
  if (reply == ((void*)0))
   break;
  dev_info = os_zalloc(wpabuf_len(reply) + 1);
  if (dev_info == ((void*)0))
   break;
  os_memcpy(dev_info, wpabuf_head(reply), wpabuf_len(reply));
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: GetDeviceInfo failed");
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);

 if (dev_info) {
  wps_er_ap_learn(ap, dev_info);
  os_free(dev_info);
 }
}
