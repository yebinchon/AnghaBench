
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_8__ {scalar_t__ mg_activation_count; int mg_fragmentation; TYPE_1__* mg_class; } ;
typedef TYPE_2__ metaslab_group_t ;
struct TYPE_7__ {int * mc_spa; } ;


 int FTAG ;
 int RW_READER ;
 int SCL_ALLOC ;
 int metaslab_group_alloc_update (TYPE_2__*) ;
 int metaslab_group_fragmentation (TYPE_2__*) ;
 int metaslab_group_preload (TYPE_2__*) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;

void
metaslab_sync_reassess(metaslab_group_t *mg)
{
 spa_t *spa = mg->mg_class->mc_spa;

 spa_config_enter(spa, SCL_ALLOC, FTAG, RW_READER);
 metaslab_group_alloc_update(mg);
 mg->mg_fragmentation = metaslab_group_fragmentation(mg);
 if (mg->mg_activation_count > 0) {
  metaslab_group_preload(mg);
 }
 spa_config_exit(spa, SCL_ALLOC, FTAG);
}
