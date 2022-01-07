
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int own_lock; void* lock; } ;


 int EVTHREAD_ALLOC_LOCK (void*,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;

int
evbuffer_enable_locking(struct evbuffer *buf, void *lock)
{



 if (buf->lock)
  return -1;

 if (!lock) {
  EVTHREAD_ALLOC_LOCK(lock, EVTHREAD_LOCKTYPE_RECURSIVE);
  if (!lock)
   return -1;
  buf->lock = lock;
  buf->own_lock = 1;
 } else {
  buf->lock = lock;
  buf->own_lock = 0;
 }

 return 0;

}
