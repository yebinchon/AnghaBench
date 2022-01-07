
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int state; int bufev; } ;


 int EVCON_WRITING ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_disable (int ,int ) ;
 int bufferevent_enable (int ,int ) ;
 int evhttp_write_buffer (struct evhttp_connection*,int ,int *) ;
 int evhttp_write_connectioncb ;

void
evhttp_start_write_(struct evhttp_connection *evcon)
{
 bufferevent_disable(evcon->bufev, EV_WRITE);
 bufferevent_enable(evcon->bufev, EV_READ);

 evcon->state = EVCON_WRITING;
 evhttp_write_buffer(evcon, evhttp_write_connectioncb, ((void*)0));
}
