
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {scalar_t__ total_len; int * first; int ** last_with_datap; int * last; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static inline void
ZERO_CHAIN(struct evbuffer *dst)
{
 ASSERT_EVBUFFER_LOCKED(dst);
 dst->first = ((void*)0);
 dst->last = ((void*)0);
 dst->last_with_datap = &(dst)->first;
 dst->total_len = 0;
}
