
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct subscription {int * uuid; } ;
struct http_request {int dummy; } ;
typedef int str ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;


 int HTTP_BAD_REQUEST ;
 int HTTP_INTERNAL_SERVER_ERROR ;
 int HTTP_OK ;
 int HTTP_PRECONDITION_FAILED ;
 int MSG_DEBUG ;
 int UPNP_SUBSCRIBE_SEC ;
 int UPNP_WPS_DEVICE_EVENT_FILE ;
 int UUID_LEN ;
 char* dup_binstr (char*,int) ;
 char* http_connection_close ;
 int http_put_date (struct wpabuf*) ;
 int http_put_empty (struct wpabuf*,int) ;
 int http_put_reply_code (struct wpabuf*,int ) ;
 int http_request_deinit (struct http_request*) ;
 char* http_request_get_hdr (struct http_request*) ;
 int http_request_send_and_deinit (struct http_request*,struct wpabuf*) ;
 char* http_server_hdr ;
 int os_free (char*) ;
 scalar_t__ os_strcasecmp (char const*,int ) ;
 char* os_strchr (char*,char) ;
 int os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,int) ;
 struct subscription* subscription_renew (struct upnp_wps_device_sm*,int *) ;
 struct subscription* subscription_start (struct upnp_wps_device_sm*,char*) ;
 int uuid_bin2str (int *,char*,int) ;
 scalar_t__ uuid_str2bin (char*,int *) ;
 int wpa_hexdump_ascii (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_printf (struct wpabuf*,char*,int ) ;
 char* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void web_connection_parse_subscribe(struct upnp_wps_device_sm *sm,
        struct http_request *req,
        const char *filename)
{
 struct wpabuf *buf;
 char *b;
 char *hdr = http_request_get_hdr(req);
 char *h;
 char *match;
 int match_len;
 char *end;
 int len;
 int got_nt = 0;
 u8 uuid[UUID_LEN];
 int got_uuid = 0;
 char *callback_urls = ((void*)0);
 struct subscription *s = ((void*)0);
 enum http_reply_code ret = HTTP_INTERNAL_SERVER_ERROR;

 buf = wpabuf_alloc(1000);
 if (buf == ((void*)0)) {
  http_request_deinit(req);
  return;
 }

 wpa_hexdump_ascii(MSG_DEBUG, "WPS UPnP: HTTP SUBSCRIBE",
     (u8 *) hdr, os_strlen(hdr));


 h = hdr;



 if (os_strcasecmp(filename, UPNP_WPS_DEVICE_EVENT_FILE) != 0) {
  ret = HTTP_PRECONDITION_FAILED;
  goto error;
 }
 wpa_printf(MSG_DEBUG, "WPS UPnP: HTTP SUBSCRIBE for event");
 end = os_strchr(h, '\n');

 while (end) {

  h = end + 1;
  end = os_strchr(h, '\n');
  if (end == ((void*)0))
   break;




  match = "NT:";
  match_len = os_strlen(match);
  if (os_strncasecmp(h, match, match_len) == 0) {
   h += match_len;
   while (*h == ' ' || *h == '\t')
    h++;
   match = "upnp:event";
   match_len = os_strlen(match);
   if (os_strncasecmp(h, match, match_len) != 0) {
    ret = HTTP_BAD_REQUEST;
    goto error;
   }
   got_nt = 1;
   continue;
  }
  match = "CALLBACK:";
  match_len = os_strlen(match);
  if (os_strncasecmp(h, match, match_len) == 0) {
   h += match_len;
   while (*h == ' ' || *h == '\t')
    h++;
   len = end - h;
   os_free(callback_urls);
   callback_urls = dup_binstr(h, len);
   if (callback_urls == ((void*)0)) {
    ret = HTTP_INTERNAL_SERVER_ERROR;
    goto error;
   }
   if (len > 0 && callback_urls[len - 1] == '\r')
    callback_urls[len - 1] = '\0';
   continue;
  }

  match = "SID:";
  match_len = os_strlen(match);
  if (os_strncasecmp(h, match, match_len) == 0) {
   h += match_len;
   while (*h == ' ' || *h == '\t')
    h++;
   match = "uuid:";
   match_len = os_strlen(match);
   if (os_strncasecmp(h, match, match_len) != 0) {
    ret = HTTP_BAD_REQUEST;
    goto error;
   }
   h += match_len;
   while (*h == ' ' || *h == '\t')
    h++;
   if (uuid_str2bin(h, uuid)) {
    ret = HTTP_BAD_REQUEST;
    goto error;
   }
   got_uuid = 1;
   continue;
  }



 }

 if (got_uuid) {

  wpa_printf(MSG_DEBUG, "WPS UPnP: Subscription renewal");
  if (callback_urls) {
   ret = HTTP_BAD_REQUEST;
   goto error;
  }
  s = subscription_renew(sm, uuid);
  if (s == ((void*)0)) {
   char str[80];
   uuid_bin2str(uuid, str, sizeof(str));
   wpa_printf(MSG_DEBUG, "WPS UPnP: Could not find "
       "SID %s", str);
   ret = HTTP_PRECONDITION_FAILED;
   goto error;
  }
 } else if (callback_urls) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: New subscription");
  if (!got_nt) {
   ret = HTTP_PRECONDITION_FAILED;
   goto error;
  }
  s = subscription_start(sm, callback_urls);
  if (s == ((void*)0)) {
   ret = HTTP_INTERNAL_SERVER_ERROR;
   goto error;
  }
 } else {
  ret = HTTP_PRECONDITION_FAILED;
  goto error;
 }


 http_put_reply_code(buf, HTTP_OK);
 wpabuf_put_str(buf, http_server_hdr);
 wpabuf_put_str(buf, http_connection_close);
 wpabuf_put_str(buf, "Content-Length: 0\r\n");
 wpabuf_put_str(buf, "SID: uuid:");

 b = wpabuf_put(buf, 0);
 uuid_bin2str(s->uuid, b, 80);
 wpa_printf(MSG_DEBUG, "WPS UPnP: Assigned SID %s", b);
 wpabuf_put(buf, os_strlen(b));
 wpabuf_put_str(buf, "\r\n");
 wpabuf_printf(buf, "Timeout: Second-%d\r\n", UPNP_SUBSCRIBE_SEC);
 http_put_date(buf);

 wpabuf_put_str(buf, "\r\n");

 os_free(callback_urls);
 http_request_send_and_deinit(req, buf);
 return;

error:
 wpa_printf(MSG_DEBUG, "WPS UPnP: SUBSCRIBE failed - return %d", ret);
 http_put_empty(buf, ret);
 http_request_send_and_deinit(req, buf);
 os_free(callback_urls);
}
