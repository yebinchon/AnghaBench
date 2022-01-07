
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
echo_readcb(struct bufferevent *bev, void *ctx)
{
 struct evbuffer *input = bufferevent_get_input(bev);
 struct evbuffer *output = bufferevent_get_output(bev);

 evbuffer_add_buffer(output, input);
 if (evbuffer_get_length(output) > 1024000)
  bufferevent_disable(bev, EV_READ);
}
