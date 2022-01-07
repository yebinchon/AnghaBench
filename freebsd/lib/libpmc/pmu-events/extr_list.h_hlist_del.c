
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlist_node {TYPE_1__* next; TYPE_1__** pprev; } ;
struct TYPE_2__ {struct TYPE_2__** pprev; } ;



__attribute__((used)) static inline void
hlist_del(struct hlist_node *n)
{

 if (n->next)
  n->next->pprev = n->pprev;
 *n->pprev = n->next;
}
