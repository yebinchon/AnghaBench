
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zones {int xtree; int ztree; int lock; } ;


 int auth_xfer_del ;
 int auth_zone_del ;
 int free (struct auth_zones*) ;
 int lock_rw_destroy (int *) ;
 int traverse_postorder (int *,int ,int *) ;

void auth_zones_delete(struct auth_zones* az)
{
 if(!az) return;
 lock_rw_destroy(&az->lock);
 traverse_postorder(&az->ztree, auth_zone_del, ((void*)0));
 traverse_postorder(&az->xtree, auth_xfer_del, ((void*)0));
 free(az);
}
