
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int refcnt; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;

void
bufferevent_incref_and_lock_(struct bufferevent *bufev)
{
 struct bufferevent_private *bufev_private =
     BEV_UPCAST(bufev);
 BEV_LOCK(bufev);
 ++bufev_private->refcnt;
}
