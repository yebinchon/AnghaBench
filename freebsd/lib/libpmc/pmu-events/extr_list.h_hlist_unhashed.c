
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int pprev; } ;



__attribute__((used)) static inline int
hlist_unhashed(const struct hlist_node *h)
{

 return !h->pprev;
}
