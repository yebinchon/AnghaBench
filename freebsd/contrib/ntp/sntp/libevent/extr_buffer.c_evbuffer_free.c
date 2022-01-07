
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int evbuffer_decref_and_unlock_ (struct evbuffer*) ;

void
evbuffer_free(struct evbuffer *buffer)
{
 EVBUFFER_LOCK(buffer);
 evbuffer_decref_and_unlock_(buffer);
}
