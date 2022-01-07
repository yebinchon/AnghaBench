
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int output; } ;


 int evbuffer_add (int ,void const*,size_t) ;

int
bufferevent_write(struct bufferevent *bufev, const void *data, size_t size)
{
 if (evbuffer_add(bufev->output, data, size) == -1)
  return (-1);

 return 0;
}
