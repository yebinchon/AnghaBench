
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int bufferevent_cancel_all_ (struct bufferevent*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int *,int *,int *,int *) ;

void
bufferevent_free(struct bufferevent *bufev)
{
 BEV_LOCK(bufev);
 bufferevent_setcb(bufev, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 bufferevent_cancel_all_(bufev);
 bufferevent_decref_and_unlock_(bufev);
}
