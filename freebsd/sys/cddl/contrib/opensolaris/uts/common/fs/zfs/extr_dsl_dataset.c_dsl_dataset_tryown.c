
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ds_lock; int * ds_owner; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_6__ {int dd_pool; } ;


 int ASSERT (int ) ;
 int DS_IS_INCONSISTENT (TYPE_2__*) ;
 int FALSE ;
 int TRUE ;
 int dsl_dataset_long_hold (TYPE_2__*,void*) ;
 int dsl_pool_config_held (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
dsl_dataset_tryown(dsl_dataset_t *ds, void *tag)
{
 boolean_t gotit = FALSE;

 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));
 mutex_enter(&ds->ds_lock);
 if (ds->ds_owner == ((void*)0) && !DS_IS_INCONSISTENT(ds)) {
  ds->ds_owner = tag;
  dsl_dataset_long_hold(ds, tag);
  gotit = TRUE;
 }
 mutex_exit(&ds->ds_lock);
 return (gotit);
}
