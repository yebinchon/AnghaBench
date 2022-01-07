
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int enabled; void* cbarg; int errorcb; void* writecb; void* readcb; int ev_write; int ev_read; int * input; int * output; } ;
typedef int everrorcb ;
typedef void* evbuffercb ;


 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_readcb ;
 int bufferevent_writecb ;
 struct bufferevent* calloc (int,int) ;
 int evbuffer_free (int *) ;
 void* evbuffer_new () ;
 int event_set (int *,int,int ,int ,struct bufferevent*) ;
 int free (struct bufferevent*) ;

struct bufferevent *
bufferevent_new(int fd, evbuffercb readcb, evbuffercb writecb,
    everrorcb errorcb, void *cbarg)
{
 struct bufferevent *bufev;

 if ((bufev = calloc(1, sizeof(struct bufferevent))) == ((void*)0))
  return (((void*)0));

 if ((bufev->input = evbuffer_new()) == ((void*)0)) {
  free(bufev);
  return (((void*)0));
 }

 if ((bufev->output = evbuffer_new()) == ((void*)0)) {
  evbuffer_free(bufev->input);
  free(bufev);
  return (((void*)0));
 }

 event_set(&bufev->ev_read, fd, EV_READ, bufferevent_readcb, bufev);
 event_set(&bufev->ev_write, fd, EV_WRITE, bufferevent_writecb, bufev);

 bufev->readcb = readcb;
 bufev->writecb = writecb;
 bufev->errorcb = errorcb;

 bufev->cbarg = cbarg;






 bufev->enabled = EV_WRITE;

 return (bufev);
}
