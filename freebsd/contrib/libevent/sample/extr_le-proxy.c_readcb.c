
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EV_READ ;
 int EV_WRITE ;
 int MAX_OUTPUT ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,void (*) (struct bufferevent*,void*),int ,int ,struct bufferevent*) ;
 int bufferevent_setwatermark (struct bufferevent*,int ,int,int) ;
 int drained_writecb ;
 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 int evbuffer_get_length (struct evbuffer*) ;
 int eventcb ;

__attribute__((used)) static void
readcb(struct bufferevent *bev, void *ctx)
{
 struct bufferevent *partner = ctx;
 struct evbuffer *src, *dst;
 size_t len;
 src = bufferevent_get_input(bev);
 len = evbuffer_get_length(src);
 if (!partner) {
  evbuffer_drain(src, len);
  return;
 }
 dst = bufferevent_get_output(partner);
 evbuffer_add_buffer(dst, src);

 if (evbuffer_get_length(dst) >= MAX_OUTPUT) {



  bufferevent_setcb(partner, readcb, drained_writecb,
      eventcb, bev);
  bufferevent_setwatermark(partner, EV_WRITE, MAX_OUTPUT/2,
      MAX_OUTPUT);
  bufferevent_disable(bev, EV_READ);
 }
}
