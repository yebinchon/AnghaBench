
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int underlying; int state; int ssl; } ;
struct bufferevent {int dummy; } ;


 int BUFFEREVENT_SSL_CONNECTING ;
 scalar_t__ SSL_renegotiate (int ) ;
 int do_handshake (struct bufferevent_openssl*) ;
 scalar_t__ set_handshake_callbacks (struct bufferevent_openssl*,int) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

int
bufferevent_ssl_renegotiate(struct bufferevent *bev)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);
 if (!bev_ssl)
  return -1;
 if (SSL_renegotiate(bev_ssl->ssl) < 0)
  return -1;
 bev_ssl->state = BUFFEREVENT_SSL_CONNECTING;
 if (set_handshake_callbacks(bev_ssl, -1) < 0)
  return -1;
 if (!bev_ssl->underlying)
  return do_handshake(bev_ssl);
 return 0;
}
