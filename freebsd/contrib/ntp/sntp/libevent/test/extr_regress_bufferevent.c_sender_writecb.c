
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int EV_WRITE ;
 int TT_BLATHER (char*) ;
 int bufferevent_disable (struct bufferevent*,int) ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ bufferevent_getfd (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static void
sender_writecb(struct bufferevent *bev, void *ctx)
{
 if (evbuffer_get_length(bufferevent_get_output(bev)) == 0) {
  bufferevent_disable(bev,EV_READ|EV_WRITE);
  TT_BLATHER(("Flushed %d: freeing it.", (int)bufferevent_getfd(bev)));
  bufferevent_free(bev);
 }
}
