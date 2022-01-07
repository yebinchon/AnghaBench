
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef int SSL ;
typedef int BIO ;


 long BIO_get_fd (int *,int *) ;
 int * BIO_new_socket (scalar_t__,int ) ;
 int BIO_set_close (int *,int ) ;
 int * SSL_get_wbio (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 struct bufferevent* bufferevent_openssl_new_impl (struct event_base*,int *,scalar_t__,int *,int,int) ;

struct bufferevent *
bufferevent_openssl_socket_new(struct event_base *base,
    evutil_socket_t fd,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{

 BIO *bio = SSL_get_wbio(ssl);
 long have_fd = -1;

 if (bio)
  have_fd = BIO_get_fd(bio, ((void*)0));

 if (have_fd >= 0) {

  if (fd < 0) {

   fd = (evutil_socket_t) have_fd;
  } else if (have_fd == (long)fd) {

  } else {


   return ((void*)0);
  }
  (void) BIO_set_close(bio, 0);
 } else {

  if (fd >= 0) {

   bio = BIO_new_socket(fd, 0);
   SSL_set_bio(ssl, bio, bio);
  } else {

  }
 }

 return bufferevent_openssl_new_impl(
  base, ((void*)0), fd, ssl, state, options);
}
