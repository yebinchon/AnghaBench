
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evconnlistener {int refcnt; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* destroy ) (struct evconnlistener*) ;} ;


 int EVTHREAD_FREE_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int UNLOCK (struct evconnlistener*) ;
 int mm_free (struct evconnlistener*) ;
 int stub1 (struct evconnlistener*) ;

__attribute__((used)) static int
listener_decref_and_unlock(struct evconnlistener *listener)
{
 int refcnt = --listener->refcnt;
 if (refcnt == 0) {
  listener->ops->destroy(listener);
  UNLOCK(listener);
  EVTHREAD_FREE_LOCK(listener->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
  mm_free(listener);
  return 1;
 } else {
  UNLOCK(listener);
  return 0;
 }
}
