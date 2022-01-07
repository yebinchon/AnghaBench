
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {TYPE_1__** last_with_datap; } ;
struct TYPE_2__ {struct TYPE_2__* next; scalar_t__ off; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static int
advance_last_with_data(struct evbuffer *buf)
{
 int n = 0;
 ASSERT_EVBUFFER_LOCKED(buf);

 if (!*buf->last_with_datap)
  return 0;

 while ((*buf->last_with_datap)->next && (*buf->last_with_datap)->next->off) {
  buf->last_with_datap = &(*buf->last_with_datap)->next;
  ++n;
 }
 return n;
}
