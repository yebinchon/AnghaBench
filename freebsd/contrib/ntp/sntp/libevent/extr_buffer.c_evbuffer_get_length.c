
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t total_len; } ;


 int EVBUFFER_LOCK (struct evbuffer const*) ;
 int EVBUFFER_UNLOCK (struct evbuffer const*) ;

size_t
evbuffer_get_length(const struct evbuffer *buffer)
{
 size_t result;

 EVBUFFER_LOCK(buffer);

 result = (buffer->total_len);

 EVBUFFER_UNLOCK(buffer);

 return result;
}
