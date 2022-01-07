
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int total_len; int last; int * last_with_datap; int first; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static inline void
COPY_CHAIN(struct evbuffer *dst, struct evbuffer *src)
{
 ASSERT_EVBUFFER_LOCKED(dst);
 ASSERT_EVBUFFER_LOCKED(src);
 dst->first = src->first;
 if (src->last_with_datap == &src->first)
  dst->last_with_datap = &dst->first;
 else
  dst->last_with_datap = src->last_with_datap;
 dst->last = src->last;
 dst->total_len = src->total_len;
}
