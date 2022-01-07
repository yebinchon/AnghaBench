
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int bufferevent_free (struct bufferevent*) ;
 int n_echo_conns_open ;

__attribute__((used)) static void
echo_eventcb(struct bufferevent *bev, short what, void *ctx)
{
 if (what & (BEV_EVENT_EOF|BEV_EVENT_ERROR)) {
  --n_echo_conns_open;
  bufferevent_free(bev);
 }
}
