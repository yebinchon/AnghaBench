
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EV_READ ;
 int EV_WRITE ;
 int TT_BLATHER (char*) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
done_writing_cb(struct bufferevent *bev, void *ctx)
{
 struct evbuffer *b = bufferevent_get_output(bev);
 if (evbuffer_get_length(b))
  return;
 TT_BLATHER(("Done writing."));
 bufferevent_disable(bev, EV_WRITE);
 bufferevent_enable(bev, EV_READ);
}
