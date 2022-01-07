
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int refcnt; int is_overlapped; int first; int * last_with_datap; int callbacks; } ;
struct evbuffer_overlapped {struct evbuffer buffer; int fd; } ;
typedef int evutil_socket_t ;


 int LIST_INIT (int *) ;
 struct evbuffer_overlapped* mm_calloc (int,int) ;

struct evbuffer *
evbuffer_overlapped_new_(evutil_socket_t fd)
{
 struct evbuffer_overlapped *evo;

 evo = mm_calloc(1, sizeof(struct evbuffer_overlapped));
 if (!evo)
  return ((void*)0);

 LIST_INIT(&evo->buffer.callbacks);
 evo->buffer.refcnt = 1;
 evo->buffer.last_with_datap = &evo->buffer.first;

 evo->buffer.is_overlapped = 1;
 evo->fd = fd;

 return &evo->buffer;
}
