
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_prop_t ;
typedef int uint64_t ;
struct TYPE_9__ {int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;


 int ENOENT ;





 int dsl_dir_get_logicalused (TYPE_1__*) ;
 int dsl_dir_get_usedchild (TYPE_1__*) ;
 int dsl_dir_get_usedds (TYPE_1__*) ;
 int dsl_dir_get_usedrefreserv (TYPE_1__*) ;
 int dsl_dir_get_usedsnap (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
get_dsl_dir_prop(dsl_dataset_t *ds, zfs_prop_t zfs_prop,
    uint64_t *val)
{
 dsl_dir_t *dd = ds->ds_dir;
 mutex_enter(&dd->dd_lock);
 switch (zfs_prop) {
 case 128:
  *val = dsl_dir_get_usedsnap(dd);
  break;
 case 131:
  *val = dsl_dir_get_usedchild(dd);
  break;
 case 130:
  *val = dsl_dir_get_usedds(dd);
  break;
 case 129:
  *val = dsl_dir_get_usedrefreserv(dd);
  break;
 case 132:
  *val = dsl_dir_get_logicalused(dd);
  break;
 default:
  mutex_exit(&dd->dd_lock);
  return (ENOENT);
 }
 mutex_exit(&dd->dd_lock);
 return (0);
}
