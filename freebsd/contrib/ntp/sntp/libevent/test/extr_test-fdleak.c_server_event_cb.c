
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int bufferevent_free (struct bufferevent*) ;
 int exit (int) ;
 int my_perror (char*) ;

__attribute__((used)) static void
server_event_cb(struct bufferevent *bev, short events, void *ctx)
{
 if (events & BEV_EVENT_ERROR) {
  my_perror("Error from bufferevent");
  exit(1);
 } else if (events & (BEV_EVENT_EOF | BEV_EVENT_ERROR)) {
  bufferevent_free(bev);
 }
}
