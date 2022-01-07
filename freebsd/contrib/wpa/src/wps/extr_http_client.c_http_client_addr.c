
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct http_client {int sd; size_t max_response; void (* cb ) (void*,struct http_client*,int) ;struct wpabuf* req; void* cb_ctx; struct sockaddr_in dst; } ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 int EVENT_TYPE_WRITE ;
 int F_SETFL ;
 int HTTP_CLIENT_TIMEOUT_SEC ;
 int MSG_DEBUG ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 scalar_t__ eloop_register_sock (int,int ,int ,struct http_client*,int *) ;
 scalar_t__ eloop_register_timeout (int ,int ,int ,struct http_client*,int *) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int http_client_free (struct http_client*) ;
 int http_client_timeout ;
 int http_client_tx_ready ;
 struct http_client* os_zalloc (int) ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 int wpa_printf (int ,char*,int ) ;

struct http_client * http_client_addr(struct sockaddr_in *dst,
          struct wpabuf *req, size_t max_response,
          void (*cb)(void *ctx,
       struct http_client *c,
       enum http_client_event event),
          void *cb_ctx)
{
 struct http_client *c;

 c = os_zalloc(sizeof(*c));
 if (c == ((void*)0))
  return ((void*)0);
 c->sd = -1;
 c->dst = *dst;
 c->max_response = max_response;
 c->cb = cb;
 c->cb_ctx = cb_ctx;

 c->sd = socket(AF_INET, SOCK_STREAM, 0);
 if (c->sd < 0)
  goto fail;

 if (fcntl(c->sd, F_SETFL, O_NONBLOCK) != 0) {
  wpa_printf(MSG_DEBUG, "HTTP: fnctl(O_NONBLOCK) failed: %s",
      strerror(errno));
  goto fail;
 }

 if (connect(c->sd, (struct sockaddr *) dst, sizeof(*dst))) {
  if (errno != EINPROGRESS) {
   wpa_printf(MSG_DEBUG, "HTTP: Failed to connect: %s",
       strerror(errno));
   goto fail;
  }





 }

 if (eloop_register_sock(c->sd, EVENT_TYPE_WRITE, http_client_tx_ready,
    c, ((void*)0)) ||
     eloop_register_timeout(HTTP_CLIENT_TIMEOUT_SEC, 0,
       http_client_timeout, c, ((void*)0)))
  goto fail;

 c->req = req;

 return c;

fail:
 http_client_free(c);
 return ((void*)0);
}
