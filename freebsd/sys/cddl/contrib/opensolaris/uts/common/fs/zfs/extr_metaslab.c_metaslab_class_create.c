
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_refcount_t ;
typedef int uint64_t ;
struct TYPE_5__ {int spa_alloc_count; } ;
typedef TYPE_1__ spa_t ;
typedef int metaslab_ops_t ;
struct TYPE_6__ {int * mc_alloc_slots; void* mc_alloc_max_slots; int mc_lock; int * mc_ops; int * mc_rotor; TYPE_1__* mc_spa; } ;
typedef TYPE_2__ metaslab_class_t ;


 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 void* kmem_zalloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_refcount_create_tracked (int *) ;

metaslab_class_t *
metaslab_class_create(spa_t *spa, metaslab_ops_t *ops)
{
 metaslab_class_t *mc;

 mc = kmem_zalloc(sizeof (metaslab_class_t), KM_SLEEP);

 mc->mc_spa = spa;
 mc->mc_rotor = ((void*)0);
 mc->mc_ops = ops;
 mutex_init(&mc->mc_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 mc->mc_alloc_slots = kmem_zalloc(spa->spa_alloc_count *
     sizeof (zfs_refcount_t), KM_SLEEP);
 mc->mc_alloc_max_slots = kmem_zalloc(spa->spa_alloc_count *
     sizeof (uint64_t), KM_SLEEP);
 for (int i = 0; i < spa->spa_alloc_count; i++)
  zfs_refcount_create_tracked(&mc->mc_alloc_slots[i]);

 return (mc);
}
