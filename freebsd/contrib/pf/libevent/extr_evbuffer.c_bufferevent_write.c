
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int enabled; int timeout_write; int ev_write; int output; } ;


 int EV_WRITE ;
 int bufferevent_add (int *,int ) ;
 int evbuffer_add (int ,void*,size_t) ;

int
bufferevent_write(struct bufferevent *bufev, void *data, size_t size)
{
 int res;

 res = evbuffer_add(bufev->output, data, size);

 if (res == -1)
  return (res);


 if (size > 0 && (bufev->enabled & EV_WRITE))
  bufferevent_add(&bufev->ev_write, bufev->timeout_write);

 return (res);
}
