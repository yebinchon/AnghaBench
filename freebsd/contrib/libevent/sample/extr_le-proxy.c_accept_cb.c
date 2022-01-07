
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef int SSL ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int EV_READ ;
 int EV_WRITE ;
 int * SSL_new (scalar_t__) ;
 int assert (int) ;
 int base ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_free (struct bufferevent*) ;
 struct bufferevent* bufferevent_openssl_filter_new (int ,struct bufferevent*,int *,int ,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (int ,int,int *,int ,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,struct bufferevent*) ;
 scalar_t__ bufferevent_socket_connect (struct bufferevent*,struct sockaddr*,int ) ;
 struct bufferevent* bufferevent_socket_new (int ,int,int) ;
 int connect_to_addr ;
 int connect_to_addrlen ;
 int eventcb ;
 int perror (char*) ;
 int readcb ;
 scalar_t__ ssl_ctx ;
 scalar_t__ use_wrapper ;

__attribute__((used)) static void
accept_cb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *a, int slen, void *p)
{
 struct bufferevent *b_out, *b_in;


 b_in = bufferevent_socket_new(base, fd,
     BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

 if (!ssl_ctx || use_wrapper)
  b_out = bufferevent_socket_new(base, -1,
      BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
 else {
  SSL *ssl = SSL_new(ssl_ctx);
  b_out = bufferevent_openssl_socket_new(base, -1, ssl,
      BUFFEREVENT_SSL_CONNECTING,
      BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
 }

 assert(b_in && b_out);

 if (bufferevent_socket_connect(b_out,
  (struct sockaddr*)&connect_to_addr, connect_to_addrlen)<0) {
  perror("bufferevent_socket_connect");
  bufferevent_free(b_out);
  bufferevent_free(b_in);
  return;
 }

 if (ssl_ctx && use_wrapper) {
  struct bufferevent *b_ssl;
  SSL *ssl = SSL_new(ssl_ctx);
  b_ssl = bufferevent_openssl_filter_new(base,
      b_out, ssl, BUFFEREVENT_SSL_CONNECTING,
      BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
  if (!b_ssl) {
   perror("Bufferevent_openssl_new");
   bufferevent_free(b_out);
   bufferevent_free(b_in);
  }
  b_out = b_ssl;
 }

 bufferevent_setcb(b_in, readcb, ((void*)0), eventcb, b_out);
 bufferevent_setcb(b_out, readcb, ((void*)0), eventcb, b_in);

 bufferevent_enable(b_in, EV_READ|EV_WRITE);
 bufferevent_enable(b_out, EV_READ|EV_WRITE);
}
