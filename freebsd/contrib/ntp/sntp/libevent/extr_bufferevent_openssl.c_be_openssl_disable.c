
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {scalar_t__ state; scalar_t__ underlying; } ;
struct bufferevent {int dummy; } ;


 int BEV_DEL_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int BEV_DEL_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 scalar_t__ BUFFEREVENT_SSL_OPEN ;
 short EV_READ ;
 short EV_WRITE ;
 int stop_reading (struct bufferevent_openssl*) ;
 int stop_writing (struct bufferevent_openssl*) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_openssl_disable(struct bufferevent *bev, short events)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);
 if (bev_ssl->state != BUFFEREVENT_SSL_OPEN)
  return 0;

 if (events & EV_READ)
  stop_reading(bev_ssl);
 if (events & EV_WRITE)
  stop_writing(bev_ssl);

 if (bev_ssl->underlying) {
  if (events & EV_READ)
   BEV_DEL_GENERIC_READ_TIMEOUT(bev);
  if (events & EV_WRITE)
   BEV_DEL_GENERIC_WRITE_TIMEOUT(bev);
 }
 return 0;
}
