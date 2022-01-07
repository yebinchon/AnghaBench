
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_7__ {int ms_lock; int ms_selected_txg; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
struct TYPE_6__ {int mg_lock; TYPE_1__* mg_vd; } ;
struct TYPE_5__ {int * vdev_spa; } ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int metaslab_load (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_syncing_txg (int *) ;

__attribute__((used)) static void
metaslab_preload(void *arg)
{
 metaslab_t *msp = arg;
 spa_t *spa = msp->ms_group->mg_vd->vdev_spa;

 ASSERT(!MUTEX_HELD(&msp->ms_group->mg_lock));

 mutex_enter(&msp->ms_lock);
 (void) metaslab_load(msp);
 msp->ms_selected_txg = spa_syncing_txg(spa);
 mutex_exit(&msp->ms_lock);
}
