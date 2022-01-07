
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_er_ap {int * http; int id; TYPE_1__* er; int * event_sub_url; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct TYPE_2__ {int event_id; int http_port; int ip_addr_text; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int * http_client_addr (struct sockaddr_in*,struct wpabuf*,int,int ,struct wps_er_ap*) ;
 char* http_client_url_parse (int *,struct sockaddr_in*,char**) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int os_free (char*) ;
 scalar_t__ os_strlen (int *) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_printf (struct wpabuf*,char*,char*,int ,int ,int ,int ,int ,int ,int) ;
 int wps_er_http_subscribe_cb ;

__attribute__((used)) static void wps_er_subscribe(struct wps_er_ap *ap)
{
 struct wpabuf *req;
 struct sockaddr_in dst;
 char *url, *path;

 if (ap->event_sub_url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: No eventSubURL - cannot "
      "subscribe");
  return;
 }
 if (ap->http) {
  wpa_printf(MSG_DEBUG, "WPS ER: Pending HTTP request - cannot "
      "send subscribe request");
  return;
 }

 url = http_client_url_parse(ap->event_sub_url, &dst, &path);
 if (url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to parse eventSubURL");
  return;
 }

 req = wpabuf_alloc(os_strlen(ap->event_sub_url) + 1000);
 if (req == ((void*)0)) {
  os_free(url);
  return;
 }
 wpabuf_printf(req,
        "SUBSCRIBE %s HTTP/1.1\r\n"
        "HOST: %s:%d\r\n"
        "CALLBACK: <http://%s:%d/event/%u/%u>\r\n"
        "NT: upnp:event\r\n"
        "TIMEOUT: Second-%d\r\n"
        "\r\n",
        path, inet_ntoa(dst.sin_addr), ntohs(dst.sin_port),
        ap->er->ip_addr_text, ap->er->http_port,
        ap->er->event_id, ap->id, 1800);
 os_free(url);
 wpa_hexdump_ascii(MSG_MSGDUMP, "WPS ER: Subscription request",
     wpabuf_head(req), wpabuf_len(req));

 ap->http = http_client_addr(&dst, req, 1000, wps_er_http_subscribe_cb,
        ap);
 if (ap->http == ((void*)0))
  wpabuf_free(req);
}
