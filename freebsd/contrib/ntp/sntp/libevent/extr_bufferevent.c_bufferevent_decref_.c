
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;

int
bufferevent_decref_(struct bufferevent *bufev)
{
 BEV_LOCK(bufev);
 return bufferevent_decref_and_unlock_(bufev);
}
