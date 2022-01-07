
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int vtree; int lock; } ;


 scalar_t__ calloc (int,int) ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int rbtree_init (int *,int *) ;
 int view_cmp ;

struct views*
views_create(void)
{
 struct views* v = (struct views*)calloc(1,
  sizeof(*v));
 if(!v)
  return ((void*)0);
 rbtree_init(&v->vtree, &view_cmp);
 lock_rw_init(&v->lock);
 lock_protect(&v->lock, &v->vtree, sizeof(v->vtree));
 return v;
}
