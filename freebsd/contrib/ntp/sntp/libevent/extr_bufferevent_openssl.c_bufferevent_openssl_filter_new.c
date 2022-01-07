
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef int SSL ;
typedef int BIO ;


 int * BIO_new_bufferevent (struct bufferevent*,int) ;
 int SSL_set_bio (int *,int *,int *) ;
 struct bufferevent* bufferevent_openssl_new_impl (struct event_base*,struct bufferevent*,int,int *,int,int) ;

struct bufferevent *
bufferevent_openssl_filter_new(struct event_base *base,
    struct bufferevent *underlying,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{


 int close_flag = 0;
 BIO *bio;
 if (!underlying)
  return ((void*)0);
 if (!(bio = BIO_new_bufferevent(underlying, close_flag)))
  return ((void*)0);

 SSL_set_bio(ssl, bio, bio);

 return bufferevent_openssl_new_impl(
  base, underlying, -1, ssl, state, options);
}
