
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int bufev; } ;
struct event_callback {int dummy; } ;


 int evhttp_read_cb (int ,struct evhttp_connection*) ;

__attribute__((used)) static void
evhttp_deferred_read_cb(struct event_callback *cb, void *data)
{
 struct evhttp_connection *evcon = data;
 evhttp_read_cb(evcon->bufev, evcon);
}
