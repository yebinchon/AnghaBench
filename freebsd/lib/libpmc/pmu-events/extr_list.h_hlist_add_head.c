
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {struct hlist_node** pprev; struct hlist_node* next; } ;
struct hlist_head {struct hlist_node* first; } ;



__attribute__((used)) static inline void
hlist_add_head(struct hlist_node *n, struct hlist_head *h)
{

 n->next = h->first;
 if (h->first)
  h->first->pprev = &n->next;
 h->first = n;
 n->pprev = &h->first;
}
