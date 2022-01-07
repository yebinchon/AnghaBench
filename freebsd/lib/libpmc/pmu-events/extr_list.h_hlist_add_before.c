
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {struct hlist_node** pprev; struct hlist_node* next; } ;



__attribute__((used)) static inline void
hlist_add_before(struct hlist_node *n, struct hlist_node *next)
{

 n->pprev = next->pprev;
 n->next = next;
 next->pprev = &n->next;
 *(n->pprev) = n;
}
