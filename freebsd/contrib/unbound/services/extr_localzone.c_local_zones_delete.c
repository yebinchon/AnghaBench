
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int ztree; int lock; } ;


 int free (struct local_zones*) ;
 int lock_rw_destroy (int *) ;
 int lzdel ;
 int traverse_postorder (int *,int ,int *) ;

void
local_zones_delete(struct local_zones* zones)
{
 if(!zones)
  return;
 lock_rw_destroy(&zones->lock);

 traverse_postorder(&zones->ztree, lzdel, ((void*)0));
 free(zones);
}
