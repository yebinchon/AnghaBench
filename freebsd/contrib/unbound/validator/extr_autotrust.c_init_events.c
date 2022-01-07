
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; } ;
struct autr_ta {scalar_t__ fetched; struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;



__attribute__((used)) static void
init_events(struct trust_anchor* tp)
{
 struct autr_ta* ta;
 for(ta=tp->autr->keys; ta; ta=ta->next) {
  ta->fetched = 0;
 }
}
