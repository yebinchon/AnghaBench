
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* dn_dbuf; int dn_holds; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_8__ {TYPE_2__* dnh_dnode; int dnh_zrlock; } ;
typedef TYPE_3__ dnode_handle_t ;
struct TYPE_6__ {int db; } ;


 int ASSERT (int) ;
 int delay (int) ;
 int * dmu_buf_get_user (int *) ;
 int dnode_destroy (TYPE_2__*) ;
 scalar_t__ zfs_refcount_count (int *) ;
 int zrl_add (int *) ;
 int zrl_destroy (int *) ;

void
dnode_special_close(dnode_handle_t *dnh)
{
 dnode_t *dn = dnh->dnh_dnode;







 while (zfs_refcount_count(&dn->dn_holds) > 0)
  delay(1);
 ASSERT(dn->dn_dbuf == ((void*)0) ||
     dmu_buf_get_user(&dn->dn_dbuf->db) == ((void*)0));
 zrl_add(&dnh->dnh_zrlock);
 dnode_destroy(dn);
 zrl_destroy(&dnh->dnh_zrlock);
 dnh->dnh_dnode = ((void*)0);
}
