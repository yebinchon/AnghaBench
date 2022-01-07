
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int ev_write; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; scalar_t__ read_blocked_on_write; } ;


 int event_del (int *) ;

__attribute__((used)) static void
stop_writing(struct bufferevent_openssl *bev_ssl)
{
 if (bev_ssl->read_blocked_on_write)
  return;
 if (bev_ssl->underlying) {
  ;
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  event_del(&bev->ev_write);
 }
}
