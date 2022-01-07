
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {void (* m1_handler ) (struct wps_er_ap*,struct wpabuf*) ;int * http; int * control_url; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int dummy; } ;


 int MSG_DEBUG ;
 int * http_client_addr (struct sockaddr_in*,struct wpabuf*,int,int ,struct wps_er_ap*) ;
 char* http_client_url_parse (int *,struct sockaddr_in*,char**) ;
 int os_free (char*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wps_er_http_get_dev_info_cb ;
 int wps_er_soap_end (struct wpabuf*,char*,char*,char*) ;
 struct wpabuf* wps_er_soap_hdr (int *,char*,int *,char*,struct sockaddr_in*,char**,char**) ;

__attribute__((used)) static int wps_er_send_get_device_info(struct wps_er_ap *ap,
           void (*m1_handler)(struct wps_er_ap *ap,
         struct wpabuf *m1))
{
 struct wpabuf *buf;
 char *len_ptr, *body_ptr;
 struct sockaddr_in dst;
 char *url, *path;

 if (ap->http) {
  wpa_printf(MSG_DEBUG, "WPS ER: Pending HTTP operation ongoing "
      "with the AP - cannot get device info");
  return -1;
 }

 if (ap->control_url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: No controlURL for AP");
  return -1;
 }

 url = http_client_url_parse(ap->control_url, &dst, &path);
 if (url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to parse controlURL");
  return -1;
 }

 buf = wps_er_soap_hdr(((void*)0), "GetDeviceInfo", ((void*)0), path, &dst,
         &len_ptr, &body_ptr);
 os_free(url);
 if (buf == ((void*)0))
  return -1;

 wps_er_soap_end(buf, "GetDeviceInfo", len_ptr, body_ptr);

 ap->http = http_client_addr(&dst, buf, 10000,
        wps_er_http_get_dev_info_cb, ap);
 if (ap->http == ((void*)0)) {
  wpabuf_free(buf);
  return -1;
 }

 ap->m1_handler = m1_handler;

 return 0;
}
