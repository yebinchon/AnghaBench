
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dn_tx_holds; int dn_holds; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_8__ {TYPE_1__* dnh_dnode; int dnh_zrlock; } ;
typedef TYPE_2__ dnode_handle_t ;
struct TYPE_9__ {int dnc_count; TYPE_2__* dnc_children; } ;
typedef TYPE_3__ dnode_children_t ;


 int ASSERT (int ) ;
 int DNODE_STAT_BUMP (int ) ;
 int DN_SLOT_IS_PTR (TYPE_1__*) ;
 void* DN_SLOT_UNINIT ;
 int dnode_buf_evict ;
 int dnode_destroy (TYPE_1__*) ;
 int kmem_free (TYPE_3__*,int) ;
 int zfs_refcount_is_zero (int *) ;
 int zrl_add (int *) ;
 int zrl_destroy (int *) ;

__attribute__((used)) static void
dnode_buf_evict_async(void *dbu)
{
 dnode_children_t *dnc = dbu;

 DNODE_STAT_BUMP(dnode_buf_evict);

 for (int i = 0; i < dnc->dnc_count; i++) {
  dnode_handle_t *dnh = &dnc->dnc_children[i];
  dnode_t *dn;






  if (!DN_SLOT_IS_PTR(dnh->dnh_dnode)) {
   zrl_destroy(&dnh->dnh_zrlock);
   dnh->dnh_dnode = DN_SLOT_UNINIT;
   continue;
  }

  zrl_add(&dnh->dnh_zrlock);
  dn = dnh->dnh_dnode;






  ASSERT(zfs_refcount_is_zero(&dn->dn_holds));
  ASSERT(zfs_refcount_is_zero(&dn->dn_tx_holds));

  dnode_destroy(dn);
  zrl_destroy(&dnh->dnh_zrlock);
  dnh->dnh_dnode = DN_SLOT_UNINIT;
 }
 kmem_free(dnc, sizeof (dnode_children_t) +
     dnc->dnc_count * sizeof (dnode_handle_t));
}
