
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int allow_dirty_shutdown; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

void
bufferevent_openssl_set_allow_dirty_shutdown(struct bufferevent *bev,
    int allow_dirty_shutdown)
{
 struct bufferevent_openssl *bev_ssl;
 BEV_LOCK(bev);
 bev_ssl = upcast(bev);
 if (bev_ssl)
  bev_ssl->allow_dirty_shutdown = !!allow_dirty_shutdown;
 BEV_UNLOCK(bev);
}
