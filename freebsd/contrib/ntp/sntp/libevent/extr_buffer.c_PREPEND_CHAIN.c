
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {TYPE_1__* last; int ** last_with_datap; int * first; scalar_t__ total_len; } ;
struct TYPE_2__ {int * next; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static void
PREPEND_CHAIN(struct evbuffer *dst, struct evbuffer *src)
{
 ASSERT_EVBUFFER_LOCKED(dst);
 ASSERT_EVBUFFER_LOCKED(src);
 src->last->next = dst->first;
 dst->first = src->first;
 dst->total_len += src->total_len;
 if (*dst->last_with_datap == ((void*)0)) {
  if (src->last_with_datap == &(src)->first)
   dst->last_with_datap = &dst->first;
  else
   dst->last_with_datap = src->last_with_datap;
 } else if (dst->last_with_datap == &dst->first) {
  dst->last_with_datap = &src->last->next;
 }
}
