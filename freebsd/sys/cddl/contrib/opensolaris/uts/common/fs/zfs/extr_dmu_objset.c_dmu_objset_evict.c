
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int os_lock; int os_dnodes; int os_spa; scalar_t__ os_sa; int * os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int dsl_dataset_t ;


 int ASSERT (int) ;
 int TXG_SIZE ;
 int dmu_objset_evict_dbufs (TYPE_1__*) ;
 int dmu_objset_evict_done (TYPE_1__*) ;
 int dmu_objset_is_dirty (TYPE_1__*,int) ;
 int dsl_prop_unregister_all (int *,TYPE_1__*) ;
 scalar_t__ list_is_empty (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_tear_down (TYPE_1__*) ;
 int spa_evicting_os_register (int ,TYPE_1__*) ;

void
dmu_objset_evict(objset_t *os)
{
 dsl_dataset_t *ds = os->os_dsl_dataset;

 for (int t = 0; t < TXG_SIZE; t++)
  ASSERT(!dmu_objset_is_dirty(os, t));

 if (ds)
  dsl_prop_unregister_all(ds, os);

 if (os->os_sa)
  sa_tear_down(os);

 dmu_objset_evict_dbufs(os);

 mutex_enter(&os->os_lock);
 spa_evicting_os_register(os->os_spa, os);
 if (list_is_empty(&os->os_dnodes)) {
  mutex_exit(&os->os_lock);
  dmu_objset_evict_done(os);
 } else {
  mutex_exit(&os->os_lock);
 }
}
