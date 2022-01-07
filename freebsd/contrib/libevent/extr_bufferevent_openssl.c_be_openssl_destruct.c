
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; } ;
struct bufferevent_openssl {int ssl; int underlying; TYPE_1__ bev; } ;
struct bufferevent {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int BIO ;


 int BEV_OPT_CLOSE_ON_FREE ;
 scalar_t__ BIO_get_fd (int *,int *) ;
 int SSL_free (int ) ;
 int * SSL_get_wbio (int ) ;
 int evutil_closesocket (scalar_t__) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_openssl_destruct(struct bufferevent *bev)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);

 if (bev_ssl->bev.options & BEV_OPT_CLOSE_ON_FREE) {
  if (! bev_ssl->underlying) {
   evutil_socket_t fd = -1;
   BIO *bio = SSL_get_wbio(bev_ssl->ssl);
   if (bio)
    fd = BIO_get_fd(bio, ((void*)0));
   if (fd >= 0)
    evutil_closesocket(fd);
  }
  SSL_free(bev_ssl->ssl);
 }
}
