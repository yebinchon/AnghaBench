
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int * ssl; } ;
struct bufferevent {int dummy; } ;
typedef int SSL ;


 struct bufferevent_openssl* upcast (struct bufferevent*) ;

SSL *
bufferevent_openssl_get_ssl(struct bufferevent *bufev)
{
 struct bufferevent_openssl *bev_ssl = upcast(bufev);
 if (!bev_ssl)
  return ((void*)0);
 return bev_ssl->ssl;
}
