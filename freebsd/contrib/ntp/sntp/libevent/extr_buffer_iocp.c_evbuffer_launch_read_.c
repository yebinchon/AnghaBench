
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_overlapped {int overlapped; } ;
struct evbuffer_overlapped {int read_in_progress; int n_buffers; int * buffers; int fd; struct evbuffer_chain* first_pinned; int write_in_progress; } ;
struct evbuffer_iovec {int dummy; } ;
struct evbuffer_chain {struct evbuffer_chain* next; } ;
struct evbuffer {scalar_t__ freeze_end; } ;
typedef int DWORD ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_MEM_PINNED_R ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 int MAX_WSABUFS ;
 int WSABUF_FROM_EVBUFFER_IOV (int *,struct evbuffer_iovec*) ;
 int WSAGetLastError () ;
 scalar_t__ WSARecv (int ,int *,int,int *,int *,int *,int *) ;
 int WSA_IO_PENDING ;
 int evbuffer_chain_pin_ (struct evbuffer_chain*,int ) ;
 int evbuffer_expand_fast_ (struct evbuffer*,size_t,int) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_freeze (struct evbuffer*,int ) ;
 int evbuffer_incref_ (struct evbuffer*) ;
 int evbuffer_read_setup_vecs_ (struct evbuffer*,size_t,struct evbuffer_iovec*,int,struct evbuffer_chain***,int) ;
 int evbuffer_unfreeze (struct evbuffer*,int ) ;
 int memset (int *,int ,int) ;
 int pin_release (struct evbuffer_overlapped*,int ) ;
 struct evbuffer_overlapped* upcast_evbuffer (struct evbuffer*) ;

int
evbuffer_launch_read_(struct evbuffer *buf, size_t at_most,
  struct event_overlapped *ol)
{
 struct evbuffer_overlapped *buf_o = upcast_evbuffer(buf);
 int r = -1, i;
 int nvecs;
 int npin=0;
 struct evbuffer_chain *chain=((void*)0), **chainp;
 DWORD bytesRead;
 DWORD flags = 0;
 struct evbuffer_iovec vecs[MAX_WSABUFS];

 if (!buf_o)
  return -1;
 EVBUFFER_LOCK(buf);
 EVUTIL_ASSERT(!buf_o->write_in_progress);
 if (buf->freeze_end || buf_o->read_in_progress)
  goto done;

 buf_o->first_pinned = ((void*)0);
 buf_o->n_buffers = 0;
 memset(buf_o->buffers, 0, sizeof(buf_o->buffers));

 if (evbuffer_expand_fast_(buf, at_most, MAX_WSABUFS) == -1)
  goto done;
 evbuffer_freeze(buf, 0);

 nvecs = evbuffer_read_setup_vecs_(buf, at_most,
     vecs, MAX_WSABUFS, &chainp, 1);
 for (i=0;i<nvecs;++i) {
  WSABUF_FROM_EVBUFFER_IOV(
   &buf_o->buffers[i],
   &vecs[i]);
 }

 buf_o->n_buffers = nvecs;
 buf_o->first_pinned = chain = *chainp;

 npin=0;
 for ( ; chain; chain = chain->next) {
  evbuffer_chain_pin_(chain, EVBUFFER_MEM_PINNED_R);
  ++npin;
 }
 EVUTIL_ASSERT(npin == nvecs);

 evbuffer_incref_(buf);
 if (WSARecv(buf_o->fd, buf_o->buffers, nvecs, &bytesRead, &flags,
      &ol->overlapped, ((void*)0))) {
  int error = WSAGetLastError();
  if (error != WSA_IO_PENDING) {

   pin_release(buf_o, EVBUFFER_MEM_PINNED_R);
   evbuffer_unfreeze(buf, 0);
   evbuffer_free(buf);
   goto done;
  }
 }

 buf_o->read_in_progress = 1;
 r = 0;
done:
 EVBUFFER_UNLOCK(buf);
 return r;
}
