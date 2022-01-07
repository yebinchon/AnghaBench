
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;

void
bufferevent_unlock(struct bufferevent *bev)
{
 bufferevent_decref_and_unlock_(bev);
}
