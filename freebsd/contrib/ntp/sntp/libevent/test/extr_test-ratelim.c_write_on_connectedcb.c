
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_CONNECTED ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int loud_writecb (struct bufferevent*,void*) ;

__attribute__((used)) static void
write_on_connectedcb(struct bufferevent *bev, short what, void *ctx)
{
 if (what & BEV_EVENT_CONNECTED) {
  loud_writecb(bev, ctx);

  bufferevent_enable(bev, EV_READ|EV_WRITE);
 }
}
