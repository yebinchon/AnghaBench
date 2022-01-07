
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int bufferevent_incref_and_lock_ (struct bufferevent*) ;

void
bufferevent_lock(struct bufferevent *bev)
{
 bufferevent_incref_and_lock_(bev);
}
