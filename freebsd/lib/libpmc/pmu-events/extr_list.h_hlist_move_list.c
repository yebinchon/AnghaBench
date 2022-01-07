
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlist_head {TYPE_1__* first; } ;
struct TYPE_2__ {struct TYPE_2__** pprev; } ;



__attribute__((used)) static inline void
hlist_move_list(struct hlist_head *old, struct hlist_head *new)
{

 new->first = old->first;
 if (new->first)
  new->first->pprev = &new->first;
 old->first = ((void*)0);
}
