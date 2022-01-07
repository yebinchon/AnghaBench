
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int read_more_deferred_cb; int bufev; int state; } ;


 int EVCON_READING_FIRSTLINE ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_disable (int ,int ) ;
 int bufferevent_enable (int ,int ) ;
 int bufferevent_get_input (int ) ;
 int bufferevent_setcb (int ,int ,int ,int ,struct evhttp_connection*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int event_deferred_cb_schedule_ (int ,int *) ;
 int evhttp_error_cb ;
 int evhttp_read_cb ;
 int evhttp_write_cb ;
 int get_deferred_queue (struct evhttp_connection*) ;

void
evhttp_start_read_(struct evhttp_connection *evcon)
{

 bufferevent_disable(evcon->bufev, EV_WRITE);
 bufferevent_enable(evcon->bufev, EV_READ);
 evcon->state = EVCON_READING_FIRSTLINE;

 bufferevent_setcb(evcon->bufev,
     evhttp_read_cb,
     evhttp_write_cb,
     evhttp_error_cb,
     evcon);



 if (evbuffer_get_length(bufferevent_get_input(evcon->bufev))) {
  event_deferred_cb_schedule_(get_deferred_queue(evcon),
      &evcon->read_more_deferred_cb);
 }
}
