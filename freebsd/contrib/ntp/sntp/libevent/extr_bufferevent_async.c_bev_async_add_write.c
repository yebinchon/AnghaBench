
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int ev_base; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_async {int write_added; TYPE_1__ bev; } ;


 int event_base_add_virtual_ (int ) ;

__attribute__((used)) static void
bev_async_add_write(struct bufferevent_async *beva)
{
 struct bufferevent *bev = &beva->bev.bev;

 if (!beva->write_added) {
  beva->write_added = 1;
  event_base_add_virtual_(bev->ev_base);
 }
}
