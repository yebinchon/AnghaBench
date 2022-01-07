
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int got_readcb ;

__attribute__((used)) static void
async_readcb(struct bufferevent *bev, void *arg)
{

 bufferevent_disable(bev, EV_READ);
 got_readcb++;
}
