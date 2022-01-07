
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;
struct browser_data {int success; } ;


 int MSG_INFO ;
 int atoi (char const*) ;
 int browser_timeout ;
 int eloop_cancel_timeout (int ,int *,int *) ;
 int eloop_register_timeout (int ,int,int ,struct browser_data**,int *) ;
 int eloop_terminate () ;
 int http_request_deinit (struct http_request*) ;
 char* http_request_get_uri (struct http_request*) ;
 int http_request_send_and_deinit (struct http_request*,struct wpabuf*) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 int wpa_printf (int ,char*,char const*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void http_req(void *ctx, struct http_request *req)
{
 struct browser_data *data = ctx;
 struct wpabuf *resp;
 const char *url;
 int done = 0;

 url = http_request_get_uri(req);
 wpa_printf(MSG_INFO, "Browser response received: %s", url);

 if (os_strcmp(url, "/") == 0) {
  data->success = 1;
  done = 1;
 } else if (os_strncmp(url, "/osu/", 5) == 0) {
  data->success = atoi(url + 5);
  done = 1;
 }

 resp = wpabuf_alloc(100);
 if (resp == ((void*)0)) {
  http_request_deinit(req);
  if (done)
   eloop_terminate();
  return;
 }
 wpabuf_put_str(resp, "HTTP/1.1\r\n\r\nUser input completed");

 if (done) {
  eloop_cancel_timeout(browser_timeout, ((void*)0), ((void*)0));
  eloop_register_timeout(0, 500000, browser_timeout, &data, ((void*)0));
 }

 http_request_send_and_deinit(req, resp);
}
