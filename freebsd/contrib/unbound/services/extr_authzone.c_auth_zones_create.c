
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zones {int xtree; int lock; int ztree; } ;


 int auth_xfer_cmp ;
 int auth_zone_cmp ;
 scalar_t__ calloc (int,int) ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int log_err (char*) ;
 int rbtree_init (int *,int *) ;

struct auth_zones* auth_zones_create(void)
{
 struct auth_zones* az = (struct auth_zones*)calloc(1, sizeof(*az));
 if(!az) {
  log_err("out of memory");
  return ((void*)0);
 }
 rbtree_init(&az->ztree, &auth_zone_cmp);
 rbtree_init(&az->xtree, &auth_xfer_cmp);
 lock_rw_init(&az->lock);
 lock_protect(&az->lock, &az->ztree, sizeof(az->ztree));
 lock_protect(&az->lock, &az->xtree, sizeof(az->xtree));

 return az;
}
