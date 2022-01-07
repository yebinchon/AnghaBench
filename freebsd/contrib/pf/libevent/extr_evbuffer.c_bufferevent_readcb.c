
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {int dummy; } ;
struct TYPE_2__ {int high; size_t low; } ;
struct bufferevent {int cbarg; int (* errorcb ) (struct bufferevent*,short,int ) ;int timeout_read; int ev_read; int (* readcb ) (struct bufferevent*,int ) ;struct evbuffer* input; TYPE_1__ wm_read; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 short EVBUFFER_EOF ;
 short EVBUFFER_ERROR ;
 size_t EVBUFFER_LENGTH (struct evbuffer*) ;
 short EVBUFFER_READ ;
 short EVBUFFER_TIMEOUT ;
 short EV_TIMEOUT ;
 int bufferevent_add (int *,int ) ;
 int bufferevent_read_pressure_cb ;
 scalar_t__ errno ;
 int evbuffer_read (struct evbuffer*,int,int) ;
 int evbuffer_setcb (struct evbuffer*,int ,struct bufferevent*) ;
 int event_del (int *) ;
 int stub1 (struct bufferevent*,int ) ;
 int stub2 (struct bufferevent*,short,int ) ;

__attribute__((used)) static void
bufferevent_readcb(int fd, short event, void *arg)
{
 struct bufferevent *bufev = arg;
 int res = 0;
 short what = EVBUFFER_READ;
 size_t len;
 int howmuch = -1;

 if (event == EV_TIMEOUT) {
  what |= EVBUFFER_TIMEOUT;
  goto error;
 }





 if (bufev->wm_read.high != 0)
  howmuch = bufev->wm_read.high;

 res = evbuffer_read(bufev->input, fd, howmuch);
 if (res == -1) {
  if (errno == EAGAIN || errno == EINTR)
   goto reschedule;

  what |= EVBUFFER_ERROR;
 } else if (res == 0) {

  what |= EVBUFFER_EOF;
 }

 if (res <= 0)
  goto error;

 bufferevent_add(&bufev->ev_read, bufev->timeout_read);


 len = EVBUFFER_LENGTH(bufev->input);
 if (bufev->wm_read.low != 0 && len < bufev->wm_read.low)
  return;
 if (bufev->wm_read.high != 0 && len > bufev->wm_read.high) {
  struct evbuffer *buf = bufev->input;
  event_del(&bufev->ev_read);


  evbuffer_setcb(buf, bufferevent_read_pressure_cb, bufev);
  return;
 }


 if (bufev->readcb != ((void*)0))
  (*bufev->readcb)(bufev, bufev->cbarg);
 return;

 reschedule:
 bufferevent_add(&bufev->ev_read, bufev->timeout_read);
 return;

 error:
 (*bufev->errorcb)(bufev, what, bufev->cbarg);
}
