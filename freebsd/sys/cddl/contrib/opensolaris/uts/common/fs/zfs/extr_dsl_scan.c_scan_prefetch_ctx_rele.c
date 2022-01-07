
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spc_refcnt; } ;
typedef TYPE_1__ scan_prefetch_ctx_t ;


 int kmem_free (TYPE_1__*,int) ;
 int zfs_refcount_destroy (int *) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

__attribute__((used)) static void
scan_prefetch_ctx_rele(scan_prefetch_ctx_t *spc, void *tag)
{
 if (zfs_refcount_remove(&spc->spc_refcnt, tag) == 0) {
  zfs_refcount_destroy(&spc->spc_refcnt);
  kmem_free(spc, sizeof (scan_prefetch_ctx_t));
 }
}
