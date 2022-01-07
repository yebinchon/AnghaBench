
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct http_client {int dummy; } ;


 struct http_client* http_client_addr (struct sockaddr_in*,struct wpabuf*,size_t,void (*) (void*,struct http_client*,int),void*) ;
 char* http_client_url_parse (char const*,struct sockaddr_in*,char**) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int os_free (char*) ;
 scalar_t__ os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_printf (struct wpabuf*,char*,char*,int ,int ) ;

struct http_client * http_client_url(const char *url,
         struct wpabuf *req, size_t max_response,
         void (*cb)(void *ctx,
      struct http_client *c,
      enum http_client_event event),
         void *cb_ctx)
{
 struct sockaddr_in dst;
 struct http_client *c;
 char *u, *path;
 struct wpabuf *req_buf = ((void*)0);

 if (os_strncmp(url, "http://", 7) != 0)
  return ((void*)0);
 u = http_client_url_parse(url, &dst, &path);
 if (u == ((void*)0))
  return ((void*)0);

 if (req == ((void*)0)) {
  req_buf = wpabuf_alloc(os_strlen(url) + 1000);
  if (req_buf == ((void*)0)) {
   os_free(u);
   return ((void*)0);
  }
  req = req_buf;
  wpabuf_printf(req,
         "GET %s HTTP/1.1\r\n"
         "Cache-Control: no-cache\r\n"
         "Pragma: no-cache\r\n"
         "Accept: text/xml, application/xml\r\n"
         "User-Agent: wpa_supplicant\r\n"
         "Host: %s:%d\r\n"
         "\r\n",
         path, inet_ntoa(dst.sin_addr),
         ntohs(dst.sin_port));
 }
 os_free(u);

 c = http_client_addr(&dst, req, max_response, cb, cb_ctx);
 if (c == ((void*)0)) {
  wpabuf_free(req_buf);
  return ((void*)0);
 }

 return c;
}
