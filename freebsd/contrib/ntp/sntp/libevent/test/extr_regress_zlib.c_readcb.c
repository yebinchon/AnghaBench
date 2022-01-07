
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EV_READ ;
 int assert (int ) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 int bufferevent_read_buffer (struct bufferevent*,struct evbuffer*) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int readcb_finished ;

__attribute__((used)) static void
readcb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bufferevent_get_input(bev)) == 8333) {
  struct evbuffer *evbuf = evbuffer_new();
  assert(evbuf != ((void*)0));


  bufferevent_read_buffer(bev, evbuf);

  bufferevent_disable(bev, EV_READ);

  if (evbuffer_get_length(evbuf) == 8333) {
   ++readcb_finished;
  }

  evbuffer_free(evbuf);
 }
}
