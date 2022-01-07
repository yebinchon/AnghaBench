
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int evbuffer_drain (struct evbuffer*,size_t) ;

__attribute__((used)) static void
self_draining_callback(struct evbuffer *evbuffer, size_t old_len,
  size_t new_len, void *arg)
{
 if (new_len > old_len)
  evbuffer_drain(evbuffer, new_len);
}
