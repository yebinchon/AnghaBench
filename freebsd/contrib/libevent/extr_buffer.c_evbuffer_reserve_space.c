
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_iovec {size_t iov_len; void* iov_base; } ;
struct evbuffer_chain {int dummy; } ;
struct evbuffer {scalar_t__ freeze_end; } ;
typedef scalar_t__ ev_ssize_t ;


 scalar_t__ CHAIN_SPACE_LEN (struct evbuffer_chain*) ;
 scalar_t__ CHAIN_SPACE_PTR (struct evbuffer_chain*) ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 scalar_t__ evbuffer_expand_fast_ (struct evbuffer*,scalar_t__,int) ;
 struct evbuffer_chain* evbuffer_expand_singlechain (struct evbuffer*,scalar_t__) ;
 int evbuffer_read_setup_vecs_ (struct evbuffer*,scalar_t__,struct evbuffer_iovec*,int,struct evbuffer_chain***,int ) ;

int
evbuffer_reserve_space(struct evbuffer *buf, ev_ssize_t size,
    struct evbuffer_iovec *vec, int n_vecs)
{
 struct evbuffer_chain *chain, **chainp;
 int n = -1;

 EVBUFFER_LOCK(buf);
 if (buf->freeze_end)
  goto done;
 if (n_vecs < 1)
  goto done;
 if (n_vecs == 1) {
  if ((chain = evbuffer_expand_singlechain(buf, size)) == ((void*)0))
   goto done;

  vec[0].iov_base = (void *)CHAIN_SPACE_PTR(chain);
  vec[0].iov_len = (size_t)CHAIN_SPACE_LEN(chain);
  EVUTIL_ASSERT(size<0 || (size_t)vec[0].iov_len >= (size_t)size);
  n = 1;
 } else {
  if (evbuffer_expand_fast_(buf, size, n_vecs)<0)
   goto done;
  n = evbuffer_read_setup_vecs_(buf, size, vec, n_vecs,
    &chainp, 0);
 }

done:
 EVBUFFER_UNLOCK(buf);
 return n;

}
