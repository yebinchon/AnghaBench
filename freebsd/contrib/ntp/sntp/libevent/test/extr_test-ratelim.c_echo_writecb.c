
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 int evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
echo_writecb(struct bufferevent *bev, void *ctx)
{
 struct evbuffer *output = bufferevent_get_output(bev);
 if (evbuffer_get_length(output) < 512000)
  bufferevent_enable(bev, EV_READ);
}
