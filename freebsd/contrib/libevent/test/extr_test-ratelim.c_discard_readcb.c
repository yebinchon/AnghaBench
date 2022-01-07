
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct client_state {size_t received; } ;
struct bufferevent {int dummy; } ;


 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 size_t evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
discard_readcb(struct bufferevent *bev, void *ctx)
{
 struct client_state *cs = ctx;
 struct evbuffer *input = bufferevent_get_input(bev);
 size_t len = evbuffer_get_length(input);
 evbuffer_drain(input, len);
 cs->received += len;
}
