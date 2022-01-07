
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int input; } ;


 int EV_READ ;
 int assert (int) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_read_buffer (struct bufferevent*,struct evbuffer*) ;
 int evbuffer_free (struct evbuffer*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 struct evbuffer* evbuffer_new () ;
 int test_ok ;

__attribute__((used)) static void
wm_readcb(struct bufferevent *bev, void *arg)
{
 struct evbuffer *evbuf = evbuffer_new();
 int len = (int)evbuffer_get_length(bev->input);
 static int nread;

 assert(len >= 10 && len <= 20);

 assert(evbuf != ((void*)0));


 bufferevent_read_buffer(bev, evbuf);

 nread += len;
 if (nread == 65000) {
  bufferevent_disable(bev, EV_READ);
  test_ok++;
 }

 evbuffer_free(evbuf);
}
