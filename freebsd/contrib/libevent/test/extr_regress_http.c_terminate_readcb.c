
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int bufferevent_get_input (struct bufferevent*) ;
 int evbuffer_drain (int ,int) ;

__attribute__((used)) static void
terminate_readcb(struct bufferevent *bev, void *arg)
{

 evbuffer_drain(bufferevent_get_input(bev), -1);
}
