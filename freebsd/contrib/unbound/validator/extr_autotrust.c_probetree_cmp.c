
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; } ;
struct TYPE_2__ {scalar_t__ next_probe_time; } ;


 int anchor_cmp (void const*,void const*) ;
 int log_assert (int) ;

int probetree_cmp(const void* x, const void* y)
{
 struct trust_anchor* a = (struct trust_anchor*)x;
 struct trust_anchor* b = (struct trust_anchor*)y;
 log_assert(a->autr && b->autr);
 if(a->autr->next_probe_time < b->autr->next_probe_time)
  return -1;
 if(a->autr->next_probe_time > b->autr->next_probe_time)
  return 1;

 return anchor_cmp(x, y);
}
