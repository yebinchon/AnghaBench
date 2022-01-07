
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ms_group; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_9__ {int mg_lock; int mg_metaslab_tree; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int avl_remove (int *,TYPE_1__*) ;
 int metaslab_group_histogram_remove (TYPE_2__*,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
metaslab_group_remove(metaslab_group_t *mg, metaslab_t *msp)
{
 mutex_enter(&msp->ms_lock);
 metaslab_group_histogram_remove(mg, msp);
 mutex_exit(&msp->ms_lock);

 mutex_enter(&mg->mg_lock);
 ASSERT(msp->ms_group == mg);
 avl_remove(&mg->mg_metaslab_tree, msp);
 msp->ms_group = ((void*)0);
 mutex_exit(&mg->mg_lock);
}
