
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int dummy; } ;


 int INIT_HLIST_NODE (struct hlist_node*) ;
 int hlist_del (struct hlist_node*) ;
 scalar_t__ hlist_unhashed (struct hlist_node*) ;

__attribute__((used)) static inline void
hlist_del_init(struct hlist_node *n)
{

 if (hlist_unhashed(n))
  return;
 hlist_del(n);
 INIT_HLIST_NODE(n);
}
