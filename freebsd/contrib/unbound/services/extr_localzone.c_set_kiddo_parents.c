
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zone {scalar_t__ dclass; int node; int lock; struct local_zone* parent; int namelabs; int name; } ;


 scalar_t__ RBTREE_NULL ;
 scalar_t__ dname_strict_subdomain (int ,int ,int ,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 scalar_t__ rbtree_next (int *) ;

__attribute__((used)) static void
set_kiddo_parents(struct local_zone* z, struct local_zone* match,
 struct local_zone* newp)
{



 struct local_zone* p = z;
 p = (struct local_zone*)rbtree_next(&p->node);
 while(p!=(struct local_zone*)RBTREE_NULL &&
  p->dclass == z->dclass && dname_strict_subdomain(p->name,
  p->namelabs, z->name, z->namelabs)) {





  lock_rw_wrlock(&p->lock);
  if(p->parent == match)
   p->parent = newp;
  lock_rw_unlock(&p->lock);
  p = (struct local_zone*)rbtree_next(&p->node);
 }
}
