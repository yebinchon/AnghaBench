
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int dummy; } ;
struct evbuffer {scalar_t__ total_len; struct evbuffer_chain* first; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;
 int ZERO_CHAIN (struct evbuffer*) ;

__attribute__((used)) static inline void
RESTORE_PINNED(struct evbuffer *src, struct evbuffer_chain *pinned,
  struct evbuffer_chain *last)
{
 ASSERT_EVBUFFER_LOCKED(src);

 if (!pinned) {
  ZERO_CHAIN(src);
  return;
 }

 src->first = pinned;
 src->last = last;
 src->last_with_datap = &src->first;
 src->total_len = 0;
}
