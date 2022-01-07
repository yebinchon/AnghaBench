
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int spa_props_lock; int spa_config; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;


 scalar_t__ INGLOBALZONE (int ) ;
 int curthread ;
 int fnvlist_add_nvlist (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_config_generation ;
 int spa_name (TYPE_1__*) ;
 int spa_namespace_lock ;
 TYPE_1__* spa_next (TYPE_1__*) ;
 scalar_t__ zone_dataset_visible (int ,int *) ;

nvlist_t *
spa_all_configs(uint64_t *generation)
{
 nvlist_t *pools;
 spa_t *spa = ((void*)0);

 if (*generation == spa_config_generation)
  return (((void*)0));

 pools = fnvlist_alloc();

 mutex_enter(&spa_namespace_lock);
 while ((spa = spa_next(spa)) != ((void*)0)) {
  if (INGLOBALZONE(curthread) ||
      zone_dataset_visible(spa_name(spa), ((void*)0))) {
   mutex_enter(&spa->spa_props_lock);
   fnvlist_add_nvlist(pools, spa_name(spa),
       spa->spa_config);
   mutex_exit(&spa->spa_props_lock);
  }
 }
 *generation = spa_config_generation;
 mutex_exit(&spa_namespace_lock);

 return (pools);
}
