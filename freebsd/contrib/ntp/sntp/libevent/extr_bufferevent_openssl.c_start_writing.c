
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int timeout_read; int ev_read; int timeout_write; int ev_write; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ write_blocked_on_read; TYPE_1__ bev; scalar_t__ underlying; } ;


 int bufferevent_add_event_ (int *,int *) ;

__attribute__((used)) static int
start_writing(struct bufferevent_openssl *bev_ssl)
{
 int r = 0;
 if (bev_ssl->underlying) {
  ;
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  r = bufferevent_add_event_(&bev->ev_write, &bev->timeout_write);
  if (!r && bev_ssl->write_blocked_on_read)
   r = bufferevent_add_event_(&bev->ev_read,
       &bev->timeout_read);
 }
 return r;
}
