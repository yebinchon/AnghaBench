
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {int dummy; } ;
struct TYPE_2__ {size_t high; } ;
struct bufferevent {int enabled; int timeout_read; int ev_read; TYPE_1__ wm_read; } ;


 int EV_READ ;
 int bufferevent_add (int *,int ) ;
 int evbuffer_setcb (struct evbuffer*,int *,int *) ;

void
bufferevent_read_pressure_cb(struct evbuffer *buf, size_t old, size_t now,
    void *arg) {
 struct bufferevent *bufev = arg;




 if (bufev->wm_read.high == 0 || now < bufev->wm_read.high) {
  evbuffer_setcb(buf, ((void*)0), ((void*)0));

  if (bufev->enabled & EV_READ)
   bufferevent_add(&bufev->ev_read, bufev->timeout_read);
 }
}
