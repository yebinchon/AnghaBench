
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int writecb_finished ;

__attribute__((used)) static void
writecb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bufferevent_get_output(bev)) == 0) {
  ++writecb_finished;
 }
}
