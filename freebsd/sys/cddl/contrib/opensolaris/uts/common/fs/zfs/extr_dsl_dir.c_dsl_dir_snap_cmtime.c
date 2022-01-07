
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timestruc_t ;
struct TYPE_3__ {int dd_lock; int dd_snap_cmtime; } ;
typedef TYPE_1__ dsl_dir_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

timestruc_t
dsl_dir_snap_cmtime(dsl_dir_t *dd)
{
 timestruc_t t;

 mutex_enter(&dd->dd_lock);
 t = dd->dd_snap_cmtime;
 mutex_exit(&dd->dd_lock);

 return (t);
}
