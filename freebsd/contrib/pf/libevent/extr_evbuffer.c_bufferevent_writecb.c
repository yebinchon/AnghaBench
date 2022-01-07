
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ low; } ;
struct bufferevent {int cbarg; int (* errorcb ) (struct bufferevent*,short,int ) ;int timeout_write; int ev_write; int output; int (* writecb ) (struct bufferevent*,int ) ;TYPE_1__ wm_write; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 short EVBUFFER_EOF ;
 short EVBUFFER_ERROR ;
 scalar_t__ EVBUFFER_LENGTH (int ) ;
 short EVBUFFER_TIMEOUT ;
 short EVBUFFER_WRITE ;
 short EV_TIMEOUT ;
 int bufferevent_add (int *,int ) ;
 scalar_t__ errno ;
 int evbuffer_write (int ,int) ;
 int stub1 (struct bufferevent*,int ) ;
 int stub2 (struct bufferevent*,short,int ) ;

__attribute__((used)) static void
bufferevent_writecb(int fd, short event, void *arg)
{
 struct bufferevent *bufev = arg;
 int res = 0;
 short what = EVBUFFER_WRITE;

 if (event == EV_TIMEOUT) {
  what |= EVBUFFER_TIMEOUT;
  goto error;
 }

 if (EVBUFFER_LENGTH(bufev->output)) {
     res = evbuffer_write(bufev->output, fd);
     if (res == -1) {



      if (errno == EAGAIN ||
   errno == EINTR ||
   errno == EINPROGRESS)
       goto reschedule;

      what |= EVBUFFER_ERROR;





     } else if (res == 0) {

      what |= EVBUFFER_EOF;
     }
     if (res <= 0)
      goto error;
 }

 if (EVBUFFER_LENGTH(bufev->output) != 0)
  bufferevent_add(&bufev->ev_write, bufev->timeout_write);





 if (bufev->writecb != ((void*)0) &&
     EVBUFFER_LENGTH(bufev->output) <= bufev->wm_write.low)
  (*bufev->writecb)(bufev, bufev->cbarg);

 return;

 reschedule:
 if (EVBUFFER_LENGTH(bufev->output) != 0)
  bufferevent_add(&bufev->ev_write, bufev->timeout_write);
 return;

 error:
 (*bufev->errorcb)(bufev, what, bufev->cbarg);
}
