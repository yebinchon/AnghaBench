
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_rwlock; } ;
typedef TYPE_1__ zap_leaf_t ;


 int kmem_free (TYPE_1__*,int) ;
 int rw_destroy (int *) ;

__attribute__((used)) static void
zap_leaf_evict_sync(void *dbu)
{
 zap_leaf_t *l = dbu;

 rw_destroy(&l->l_rwlock);
 kmem_free(l, sizeof (zap_leaf_t));
}
