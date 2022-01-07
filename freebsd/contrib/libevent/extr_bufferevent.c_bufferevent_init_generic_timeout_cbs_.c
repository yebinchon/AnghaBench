
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int ev_base; int ev_write; int ev_read; } ;


 int EV_FINALIZE ;
 int bufferevent_generic_read_timeout_cb ;
 int bufferevent_generic_write_timeout_cb ;
 int event_assign (int *,int ,int,int ,int ,struct bufferevent*) ;

void
bufferevent_init_generic_timeout_cbs_(struct bufferevent *bev)
{
 event_assign(&bev->ev_read, bev->ev_base, -1, EV_FINALIZE,
     bufferevent_generic_read_timeout_cb, bev);
 event_assign(&bev->ev_write, bev->ev_base, -1, EV_FINALIZE,
     bufferevent_generic_write_timeout_cb, bev);
}
