
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int dummy; } ;
typedef int ev_ssize_t ;
struct TYPE_2__ {int max_single_write; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 TYPE_1__* BEV_UPCAST (struct bufferevent*) ;

ev_ssize_t
bufferevent_get_max_single_write(struct bufferevent *bev)
{
 ev_ssize_t r;

 BEV_LOCK(bev);
 r = BEV_UPCAST(bev)->max_single_write;
 BEV_UNLOCK(bev);
 return r;
}
