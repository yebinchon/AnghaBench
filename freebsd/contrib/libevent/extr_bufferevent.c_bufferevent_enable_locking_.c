
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int output; int input; } ;
struct TYPE_2__ {int own_lock; void* lock; } ;


 TYPE_1__* BEV_UPCAST (struct bufferevent*) ;
 int EVTHREAD_ALLOC_LOCK (void*,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 struct bufferevent* bufferevent_get_underlying (struct bufferevent*) ;
 int evbuffer_enable_locking (int ,void*) ;

int
bufferevent_enable_locking_(struct bufferevent *bufev, void *lock)
{



 struct bufferevent *underlying;

 if (BEV_UPCAST(bufev)->lock)
  return -1;
 underlying = bufferevent_get_underlying(bufev);

 if (!lock && underlying && BEV_UPCAST(underlying)->lock) {
  lock = BEV_UPCAST(underlying)->lock;
  BEV_UPCAST(bufev)->lock = lock;
  BEV_UPCAST(bufev)->own_lock = 0;
 } else if (!lock) {
  EVTHREAD_ALLOC_LOCK(lock, EVTHREAD_LOCKTYPE_RECURSIVE);
  if (!lock)
   return -1;
  BEV_UPCAST(bufev)->lock = lock;
  BEV_UPCAST(bufev)->own_lock = 1;
 } else {
  BEV_UPCAST(bufev)->lock = lock;
  BEV_UPCAST(bufev)->own_lock = 0;
 }
 evbuffer_enable_locking(bufev->input, lock);
 evbuffer_enable_locking(bufev->output, lock);

 if (underlying && !BEV_UPCAST(underlying)->lock)
  bufferevent_enable_locking_(underlying, lock);

 return 0;

}
