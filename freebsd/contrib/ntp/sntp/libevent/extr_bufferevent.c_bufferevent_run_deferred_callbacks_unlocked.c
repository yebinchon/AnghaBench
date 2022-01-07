
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct bufferevent {void* cbarg; int (* errorcb ) (struct bufferevent*,short,void*) ;int (* writecb ) (struct bufferevent*,void*) ;int (* readcb ) (struct bufferevent*,void*) ;} ;
struct bufferevent_private {short eventcb_pending; int errno_pending; scalar_t__ writecb_pending; scalar_t__ readcb_pending; struct bufferevent bev; } ;
typedef int (* bufferevent_event_cb ) (struct bufferevent*,short,void*) ;
typedef int (* bufferevent_data_cb ) (struct bufferevent*,void*) ;


 short BEV_EVENT_CONNECTED ;
 int BEV_LOCK (struct bufferevent*) ;
 int EVUTIL_SET_SOCKET_ERROR (int) ;
 int UNLOCKED (int ) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;

__attribute__((used)) static void
bufferevent_run_deferred_callbacks_unlocked(struct event_callback *cb, void *arg)
{
 struct bufferevent_private *bufev_private = arg;
 struct bufferevent *bufev = &bufev_private->bev;

 BEV_LOCK(bufev);



 if ((bufev_private->eventcb_pending & BEV_EVENT_CONNECTED) &&
     bufev->errorcb) {


  bufferevent_event_cb errorcb = bufev->errorcb;
  void *cbarg = bufev->cbarg;
  bufev_private->eventcb_pending &= ~BEV_EVENT_CONNECTED;
  do { BEV_UNLOCK(bufev); errorcb(bufev, BEV_EVENT_CONNECTED, cbarg); BEV_LOCK(bufev); } while(0);
 }
 if (bufev_private->readcb_pending && bufev->readcb) {
  bufferevent_data_cb readcb = bufev->readcb;
  void *cbarg = bufev->cbarg;
  bufev_private->readcb_pending = 0;
  do { BEV_UNLOCK(bufev); readcb(bufev, cbarg); BEV_LOCK(bufev); } while(0);
 }
 if (bufev_private->writecb_pending && bufev->writecb) {
  bufferevent_data_cb writecb = bufev->writecb;
  void *cbarg = bufev->cbarg;
  bufev_private->writecb_pending = 0;
  do { BEV_UNLOCK(bufev); writecb(bufev, cbarg); BEV_LOCK(bufev); } while(0);
 }
 if (bufev_private->eventcb_pending && bufev->errorcb) {
  bufferevent_event_cb errorcb = bufev->errorcb;
  void *cbarg = bufev->cbarg;
  short what = bufev_private->eventcb_pending;
  int err = bufev_private->errno_pending;
  bufev_private->eventcb_pending = 0;
  bufev_private->errno_pending = 0;
  EVUTIL_SET_SOCKET_ERROR(err);
  do { BEV_UNLOCK(bufev); errorcb(bufev,what,cbarg); BEV_LOCK(bufev); } while(0);
 }
 bufferevent_decref_and_unlock_(bufev);

}
