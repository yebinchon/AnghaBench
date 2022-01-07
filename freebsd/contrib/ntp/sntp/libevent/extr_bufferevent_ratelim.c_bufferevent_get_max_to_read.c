
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int ev_ssize_t ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 int BEV_UPCAST (struct bufferevent*) ;
 int bufferevent_get_read_max_ (int ) ;

ev_ssize_t
bufferevent_get_max_to_read(struct bufferevent *bev)
{
 ev_ssize_t r;
 BEV_LOCK(bev);
 r = bufferevent_get_read_max_(BEV_UPCAST(bev));
 BEV_UNLOCK(bev);
 return r;
}
