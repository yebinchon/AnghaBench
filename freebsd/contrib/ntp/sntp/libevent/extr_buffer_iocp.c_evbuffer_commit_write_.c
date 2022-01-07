
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_overlapped {scalar_t__ write_in_progress; int read_in_progress; } ;
struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_MEM_PINNED_W ;
 int EVUTIL_ASSERT (int) ;
 int evbuffer_decref_and_unlock_ (struct evbuffer*) ;
 int evbuffer_drain (struct evbuffer*,int ) ;
 int evbuffer_unfreeze (struct evbuffer*,int) ;
 int pin_release (struct evbuffer_overlapped*,int ) ;
 struct evbuffer_overlapped* upcast_evbuffer (struct evbuffer*) ;

void
evbuffer_commit_write_(struct evbuffer *evbuf, ev_ssize_t nBytes)
{
 struct evbuffer_overlapped *buf = upcast_evbuffer(evbuf);

 EVBUFFER_LOCK(evbuf);
 EVUTIL_ASSERT(buf->write_in_progress && !buf->read_in_progress);
 evbuffer_unfreeze(evbuf, 1);
 evbuffer_drain(evbuf, nBytes);
 pin_release(buf,EVBUFFER_MEM_PINNED_W);
 buf->write_in_progress = 0;
 evbuffer_decref_and_unlock_(evbuf);
}
