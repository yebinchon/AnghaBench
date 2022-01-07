
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int evutil_socket_t ;
typedef int SSL ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_ACCEPTING ;
 int EV_READ ;
 int EV_WRITE ;
 int * SSL_new (int ) ;
 int SSL_use_PrivateKey (int *,int ) ;
 int SSL_use_certificate (int *,int ) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (int ,int ,int *,int ,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,void*) ;
 int evconnlistener_disable (struct evconnlistener*) ;
 int eventcb ;
 int get_ssl_ctx () ;
 int getcert () ;
 int getkey () ;
 int respond_to_number ;

__attribute__((used)) static void
acceptcb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
 struct basic_test_data *data = arg;
 struct bufferevent *bev;
 SSL *ssl = SSL_new(get_ssl_ctx());

 SSL_use_certificate(ssl, getcert());
 SSL_use_PrivateKey(ssl, getkey());

 bev = bufferevent_openssl_socket_new(
  data->base,
  fd,
  ssl,
  BUFFEREVENT_SSL_ACCEPTING,
  BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

 bufferevent_setcb(bev, respond_to_number, ((void*)0), eventcb,
     (void*)"server");

 bufferevent_enable(bev, EV_READ|EV_WRITE);


 evconnlistener_disable(listener);
}
