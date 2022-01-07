
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {scalar_t__ total_len; TYPE_1__* last; int * last_with_datap; int first; } ;
struct TYPE_2__ {int next; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static void
APPEND_CHAIN(struct evbuffer *dst, struct evbuffer *src)
{
 ASSERT_EVBUFFER_LOCKED(dst);
 ASSERT_EVBUFFER_LOCKED(src);
 dst->last->next = src->first;
 if (src->last_with_datap == &src->first)
  dst->last_with_datap = &dst->last->next;
 else
  dst->last_with_datap = src->last_with_datap;
 dst->last = src->last;
 dst->total_len += src->total_len;
}
