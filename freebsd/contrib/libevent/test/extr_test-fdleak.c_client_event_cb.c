
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_ERROR ;
 int EV_READ ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_write (struct bufferevent*,unsigned char*,int) ;
 int exit (int) ;
 int puts (char*) ;

__attribute__((used)) static void
client_event_cb(struct bufferevent *bev, short events, void *ctx)
{
 if (events & BEV_EVENT_CONNECTED) {
  unsigned char tmp = 'A';
  bufferevent_write(bev, &tmp, 1);
 } else if (events & BEV_EVENT_ERROR) {
  puts("Client socket got error!");
  exit(2);
 }

 bufferevent_enable(bev, EV_READ);
}
