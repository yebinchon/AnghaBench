
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int vtree; int lock; } ;


 int delviewnode ;
 int free (struct views*) ;
 int lock_rw_destroy (int *) ;
 int traverse_postorder (int *,int ,int *) ;

void
views_delete(struct views* v)
{
 if(!v)
  return;
 lock_rw_destroy(&v->lock);
 traverse_postorder(&v->vtree, delviewnode, ((void*)0));
 free(v);
}
