
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_data {int namelabs; int name; int node; } ;


 scalar_t__ RBTREE_NULL ;
 scalar_t__ dname_strict_subdomain (int ,int ,int ,int ) ;
 scalar_t__ rbtree_next (int *) ;

__attribute__((used)) static int
is_terminal(struct local_data* d)
{



 struct local_data* n = (struct local_data*)rbtree_next(&d->node);
 if(n == (struct local_data*)RBTREE_NULL)
  return 1;
 if(dname_strict_subdomain(n->name, n->namelabs, d->name, d->namelabs))
  return 0;
 return 1;
}
