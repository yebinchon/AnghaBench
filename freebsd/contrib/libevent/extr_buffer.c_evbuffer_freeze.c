
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int freeze_start; int freeze_end; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

int
evbuffer_freeze(struct evbuffer *buffer, int start)
{
 EVBUFFER_LOCK(buffer);
 if (start)
  buffer->freeze_start = 1;
 else
  buffer->freeze_end = 1;
 EVBUFFER_UNLOCK(buffer);
 return 0;
}
