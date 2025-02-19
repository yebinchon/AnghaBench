
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;
struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; scalar_t__ setup_data; } ;
typedef int evutil_socket_t ;
typedef enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef int SSL ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_ACCEPTING ;
 int EV_READ ;
 int EV_TIMEOUT ;
 int EV_WRITE ;
 scalar_t__ REGRESS_OPENSSL_SERVER ;
 int REGRESS_OPENSSL_SLEEP ;
 int * SSL_new (int ) ;
 int SSL_use_PrivateKey (int *,int ) ;
 int SSL_use_certificate (int *,int ) ;
 int acceptcb_deferred ;
 int bufferevent_disable (struct bufferevent*,int) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (int ,int ,int *,int ,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,void*) ;
 int evconnlistener_disable (struct evconnlistener*) ;
 int event_base_once (int ,int,int ,int ,struct bufferevent*,struct timeval*) ;
 int eventcb ;
 int get_ssl_ctx () ;
 int respond_to_number ;
 int ssl_getcert () ;
 int ssl_getkey () ;

__attribute__((used)) static void
acceptcb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
 struct basic_test_data *data = arg;
 struct bufferevent *bev;
 enum regress_openssl_type type;
 SSL *ssl = SSL_new(get_ssl_ctx());

 type = (enum regress_openssl_type)data->setup_data;

 SSL_use_certificate(ssl, ssl_getcert());
 SSL_use_PrivateKey(ssl, ssl_getkey());

 bev = bufferevent_openssl_socket_new(
  data->base,
  fd,
  ssl,
  BUFFEREVENT_SSL_ACCEPTING,
  BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

 bufferevent_setcb(bev, respond_to_number, ((void*)0), eventcb,
     (void*)(REGRESS_OPENSSL_SERVER));

 if (type & REGRESS_OPENSSL_SLEEP) {
  struct timeval when = { 1, 0 };
  event_base_once(data->base, -1, EV_TIMEOUT,
      acceptcb_deferred, bev, &when);
  bufferevent_disable(bev, EV_READ|EV_WRITE);
 } else {
  bufferevent_enable(bev, EV_READ|EV_WRITE);
 }


 evconnlistener_disable(listener);
}
