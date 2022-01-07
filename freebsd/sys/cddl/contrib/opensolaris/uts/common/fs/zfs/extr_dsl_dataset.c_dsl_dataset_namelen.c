
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ds_lock; int ds_snapname; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int VERIFY0 (int ) ;
 int dsl_dataset_get_snapname (TYPE_1__*) ;
 int dsl_dir_namelen (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strlen (int ) ;

int
dsl_dataset_namelen(dsl_dataset_t *ds)
{
 VERIFY0(dsl_dataset_get_snapname(ds));
 mutex_enter(&ds->ds_lock);
 int len = dsl_dir_namelen(ds->ds_dir) + 1 + strlen(ds->ds_snapname);
 mutex_exit(&ds->ds_lock);
 return (len);
}
