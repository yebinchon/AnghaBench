
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {size_t max_single_write; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 size_t EV_SSIZE_MAX ;
 size_t MAX_SINGLE_WRITE_DEFAULT ;

int
bufferevent_set_max_single_write(struct bufferevent *bev, size_t size)
{
 struct bufferevent_private *bevp;
 BEV_LOCK(bev);
 bevp = BEV_UPCAST(bev);
 if (size == 0 || size > EV_SSIZE_MAX)
  bevp->max_single_write = MAX_SINGLE_WRITE_DEFAULT;
 else
  bevp->max_single_write = size;
 BEV_UNLOCK(bev);
 return 0;
}
