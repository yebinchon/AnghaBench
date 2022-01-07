
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct view* name; int respip_set; int local_zones; int lock; } ;


 int free (struct view*) ;
 int local_zones_delete (int ) ;
 int lock_rw_destroy (int *) ;
 int respip_set_delete (int ) ;

void
view_delete(struct view* v)
{
 if(!v)
  return;
 lock_rw_destroy(&v->lock);
 local_zones_delete(v->local_zones);
 respip_set_delete(v->respip_set);
 free(v->name);
 free(v);
}
