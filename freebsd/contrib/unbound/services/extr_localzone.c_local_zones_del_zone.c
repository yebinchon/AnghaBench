
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int ztree; } ;
struct local_zone {int lock; int parent; } ;


 int local_zone_delete (struct local_zone*) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int rbtree_delete (int *,struct local_zone*) ;
 int set_kiddo_parents (struct local_zone*,struct local_zone*,int ) ;

void local_zones_del_zone(struct local_zones* zones, struct local_zone* z)
{

 lock_rw_wrlock(&z->lock);
 set_kiddo_parents(z, z, z->parent);


 (void)rbtree_delete(&zones->ztree, z);


 lock_rw_unlock(&z->lock);
 local_zone_delete(z);
}
