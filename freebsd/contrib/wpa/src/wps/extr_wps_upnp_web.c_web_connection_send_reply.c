
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;
typedef int len_buf ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;


 int HTTP_OK ;
 int MSG_INFO ;
 scalar_t__ base64_encode (int ,int ,size_t*) ;
 char* http_connection_close ;
 int http_put_date (struct wpabuf*) ;
 int http_request_deinit (struct http_request*) ;
 int http_request_send_and_deinit (struct http_request*,struct wpabuf*) ;
 int os_free (char*) ;
 int os_memcpy (char*,char*,unsigned int) ;
 int os_snprintf (char*,int,char*,int) ;
 unsigned int os_strlen (char*) ;
 char* soap_error_postfix ;
 char* soap_error_prefix ;
 char* soap_postfix ;
 char* soap_prefix ;
 char* urn_wfawlanconfig ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_printf (struct wpabuf*,char*,...) ;
 char* wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,char const*,int) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void web_connection_send_reply(struct http_request *req,
          enum http_reply_code ret,
          const char *action, int action_len,
          const struct wpabuf *reply,
          const char *replyname)
{
 struct wpabuf *buf;
 char *replydata;
 char *put_length_here = ((void*)0);
 char *body_start = ((void*)0);

 if (reply) {
  size_t len;
  replydata = (char *) base64_encode(wpabuf_head(reply),
         wpabuf_len(reply), &len);
 } else
  replydata = ((void*)0);






 buf = wpabuf_alloc(1000 + (replydata ? os_strlen(replydata) : 0U) +
      (action_len > 0 ? action_len * 2 : 0));
 if (buf == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS UPnP: Cannot allocate reply to "
      "POST");
  os_free(replydata);
  http_request_deinit(req);
  return;
 }






 if (ret == HTTP_OK) {
  wpabuf_put_str(buf,
          "HTTP/1.1 200 OK\r\n"
          "Content-Type: text/xml; "
          "charset=\"utf-8\"\r\n");
 } else {
  wpabuf_printf(buf, "HTTP/1.1 %d Error\r\n", ret);
 }
 wpabuf_put_str(buf, http_connection_close);

 wpabuf_put_str(buf, "Content-Length: ");




 put_length_here = wpabuf_put(buf, 0);
 wpabuf_put_str(buf, "        \r\n");

 http_put_date(buf);


 wpabuf_put_str(buf, "\r\n");

 body_start = wpabuf_put(buf, 0);

 if (ret == HTTP_OK) {
  wpabuf_put_str(buf, soap_prefix);
  wpabuf_put_str(buf, "<u:");
  wpabuf_put_data(buf, action, action_len);
  wpabuf_put_str(buf, "Response xmlns:u=\"");
  wpabuf_put_str(buf, urn_wfawlanconfig);
  wpabuf_put_str(buf, "\">\n");
  if (replydata && replyname) {





   wpabuf_printf(buf, "<%s>", replyname);
   wpabuf_put_str(buf, replydata);
   wpabuf_printf(buf, "</%s>\n", replyname);
  }
  wpabuf_put_str(buf, "</u:");
  wpabuf_put_data(buf, action, action_len);
  wpabuf_put_str(buf, "Response>\n");
  wpabuf_put_str(buf, soap_postfix);
 } else {

  wpabuf_put_str(buf, soap_prefix);
  wpabuf_put_str(buf, soap_error_prefix);
  wpabuf_printf(buf, "<errorCode>%d</errorCode>\n", ret);
  wpabuf_put_str(buf, soap_error_postfix);
  wpabuf_put_str(buf, soap_postfix);
 }
 os_free(replydata);


 if (body_start && put_length_here) {
  int body_length = (char *) wpabuf_put(buf, 0) - body_start;
  char len_buf[10];
  os_snprintf(len_buf, sizeof(len_buf), "%d", body_length);
  os_memcpy(put_length_here, len_buf, os_strlen(len_buf));
 }

 http_request_send_and_deinit(req, buf);
}
