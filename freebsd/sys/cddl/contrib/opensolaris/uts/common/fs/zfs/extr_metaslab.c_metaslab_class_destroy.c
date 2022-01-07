
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_refcount_t ;
typedef int uint64_t ;
struct TYPE_7__ {scalar_t__ mc_alloc; scalar_t__ mc_deferred; scalar_t__ mc_space; scalar_t__ mc_dspace; int mc_lock; TYPE_1__* mc_spa; struct TYPE_7__* mc_alloc_max_slots; struct TYPE_7__* mc_alloc_slots; int * mc_rotor; } ;
typedef TYPE_2__ metaslab_class_t ;
struct TYPE_6__ {int spa_alloc_count; } ;


 int ASSERT (int) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 int zfs_refcount_destroy (TYPE_2__*) ;

void
metaslab_class_destroy(metaslab_class_t *mc)
{
 ASSERT(mc->mc_rotor == ((void*)0));
 ASSERT(mc->mc_alloc == 0);
 ASSERT(mc->mc_deferred == 0);
 ASSERT(mc->mc_space == 0);
 ASSERT(mc->mc_dspace == 0);

 for (int i = 0; i < mc->mc_spa->spa_alloc_count; i++)
  zfs_refcount_destroy(&mc->mc_alloc_slots[i]);
 kmem_free(mc->mc_alloc_slots, mc->mc_spa->spa_alloc_count *
     sizeof (zfs_refcount_t));
 kmem_free(mc->mc_alloc_max_slots, mc->mc_spa->spa_alloc_count *
     sizeof (uint64_t));
 mutex_destroy(&mc->mc_lock);
 kmem_free(mc, sizeof (metaslab_class_t));
}
