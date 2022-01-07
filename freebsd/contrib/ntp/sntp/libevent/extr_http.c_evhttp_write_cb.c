
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int cb_arg; int (* cb ) (struct evhttp_connection*,int ) ;} ;
struct bufferevent {int dummy; } ;


 int stub1 (struct evhttp_connection*,int ) ;

__attribute__((used)) static void
evhttp_write_cb(struct bufferevent *bufev, void *arg)
{
 struct evhttp_connection *evcon = arg;


 if (evcon->cb != ((void*)0))
  (*evcon->cb)(evcon, evcon->cb_arg);
}
