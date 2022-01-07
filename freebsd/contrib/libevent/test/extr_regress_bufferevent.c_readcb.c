
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {struct evbuffer* input; } ;


 int EV_READ ;
 int assert (int ) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_read_buffer (struct bufferevent*,struct evbuffer*) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int test_ok ;

__attribute__((used)) static void
readcb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bev->input) == 8333) {
  struct evbuffer *evbuf = evbuffer_new();
  assert(evbuf != ((void*)0));


  bufferevent_read_buffer(bev, evbuf);

  bufferevent_disable(bev, EV_READ);

  if (evbuffer_get_length(evbuf) == 8333) {
   test_ok++;
  }

  evbuffer_free(evbuf);
 }
}
