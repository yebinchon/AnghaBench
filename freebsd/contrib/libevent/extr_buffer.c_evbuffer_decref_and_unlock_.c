
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {struct evbuffer_chain* next; } ;
struct evbuffer {scalar_t__ refcnt; int lock; scalar_t__ own_lock; int deferred; int cb_queue; scalar_t__ deferred_cbs; struct evbuffer_chain* first; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVTHREAD_FREE_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVUTIL_ASSERT (int) ;
 int evbuffer_chain_free (struct evbuffer_chain*) ;
 int evbuffer_remove_all_callbacks (struct evbuffer*) ;
 int event_deferred_cb_cancel_ (int ,int *) ;
 int mm_free (struct evbuffer*) ;

void
evbuffer_decref_and_unlock_(struct evbuffer *buffer)
{
 struct evbuffer_chain *chain, *next;
 ASSERT_EVBUFFER_LOCKED(buffer);

 EVUTIL_ASSERT(buffer->refcnt > 0);

 if (--buffer->refcnt > 0) {
  EVBUFFER_UNLOCK(buffer);
  return;
 }

 for (chain = buffer->first; chain != ((void*)0); chain = next) {
  next = chain->next;
  evbuffer_chain_free(chain);
 }
 evbuffer_remove_all_callbacks(buffer);
 if (buffer->deferred_cbs)
  event_deferred_cb_cancel_(buffer->cb_queue, &buffer->deferred);

 EVBUFFER_UNLOCK(buffer);
 if (buffer->own_lock)
  EVTHREAD_FREE_LOCK(buffer->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
 mm_free(buffer);
}
