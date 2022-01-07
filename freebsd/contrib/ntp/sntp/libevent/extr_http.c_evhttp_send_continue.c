
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int minor; int major; } ;
struct evhttp_connection {int bufev; int * cb_arg; int cb; } ;


 int EV_WRITE ;
 int bufferevent_enable (int ,int ) ;
 int bufferevent_get_output (int ) ;
 int bufferevent_setcb (int ,int ,int ,int ,struct evhttp_connection*) ;
 int evbuffer_add_printf (int ,char*,int ,int ) ;
 int evhttp_error_cb ;
 int evhttp_read_cb ;
 int evhttp_send_continue_done ;
 int evhttp_write_cb ;

__attribute__((used)) static void
evhttp_send_continue(struct evhttp_connection *evcon,
   struct evhttp_request *req)
{
 bufferevent_enable(evcon->bufev, EV_WRITE);
 evbuffer_add_printf(bufferevent_get_output(evcon->bufev),
   "HTTP/%d.%d 100 Continue\r\n\r\n",
   req->major, req->minor);
 evcon->cb = evhttp_send_continue_done;
 evcon->cb_arg = ((void*)0);
 bufferevent_setcb(evcon->bufev,
     evhttp_read_cb,
     evhttp_write_cb,
     evhttp_error_cb,
     evcon);
}
