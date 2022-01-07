
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int EVBUFFER_UNLOCK (struct evbuffer*) ;

void
evbuffer_unlock(struct evbuffer *buf)
{
 EVBUFFER_UNLOCK(buf);
}
