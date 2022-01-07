
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int er; int * http; int sid; int * event_sub_url; } ;
struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
typedef int sid ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int * http_client_addr (struct sockaddr_in*,struct wpabuf*,int,int ,struct wps_er_ap*) ;
 char* http_client_url_parse (int *,struct sockaddr_in*,char**) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int os_free (char*) ;
 scalar_t__ os_strlen (int *) ;
 int uuid_bin2str (int ,char*,int) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_printf (struct wpabuf*,char*,char*,int ,int ,char*) ;
 int wps_er_ap_unsubscribed (int ,struct wps_er_ap*) ;
 int wps_er_http_unsubscribe_cb ;

__attribute__((used)) static void wps_er_ap_unsubscribe(struct wps_er *er, struct wps_er_ap *ap)
{
 struct wpabuf *req;
 struct sockaddr_in dst;
 char *url, *path;
 char sid[100];

 if (ap->event_sub_url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: No eventSubURL - cannot "
      "subscribe");
  goto fail;
 }
 if (ap->http) {
  wpa_printf(MSG_DEBUG, "WPS ER: Pending HTTP request - cannot "
      "send subscribe request");
  goto fail;
 }

 url = http_client_url_parse(ap->event_sub_url, &dst, &path);
 if (url == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to parse eventSubURL");
  goto fail;
 }

 req = wpabuf_alloc(os_strlen(ap->event_sub_url) + 1000);
 if (req == ((void*)0)) {
  os_free(url);
  goto fail;
 }
 uuid_bin2str(ap->sid, sid, sizeof(sid));
 wpabuf_printf(req,
        "UNSUBSCRIBE %s HTTP/1.1\r\n"
        "HOST: %s:%d\r\n"
        "SID: uuid:%s\r\n"
        "\r\n",
        path, inet_ntoa(dst.sin_addr), ntohs(dst.sin_port), sid);
 os_free(url);
 wpa_hexdump_ascii(MSG_MSGDUMP, "WPS ER: Unsubscription request",
     wpabuf_head(req), wpabuf_len(req));

 ap->http = http_client_addr(&dst, req, 1000,
        wps_er_http_unsubscribe_cb, ap);
 if (ap->http == ((void*)0)) {
  wpabuf_free(req);
  goto fail;
 }
 return;

fail:




 wps_er_ap_unsubscribed(ap->er, ap);
}
