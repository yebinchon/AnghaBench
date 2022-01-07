
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int ztree; int lock; } ;


 scalar_t__ calloc (int,int) ;
 int local_zone_cmp ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int rbtree_init (int *,int *) ;

struct local_zones*
local_zones_create(void)
{
 struct local_zones* zones = (struct local_zones*)calloc(1,
  sizeof(*zones));
 if(!zones)
  return ((void*)0);
 rbtree_init(&zones->ztree, &local_zone_cmp);
 lock_rw_init(&zones->lock);
 lock_protect(&zones->lock, &zones->ztree, sizeof(zones->ztree));

 return zones;
}
