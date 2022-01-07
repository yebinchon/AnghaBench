
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_replace_all_by_template_locked (TYPE_1__*,int *,int,int *) ;

int
sa_replace_all_by_template(sa_handle_t *hdl, sa_bulk_attr_t *attr_desc,
    int attr_count, dmu_tx_t *tx)
{
 int error;

 mutex_enter(&hdl->sa_lock);
 error = sa_replace_all_by_template_locked(hdl, attr_desc,
     attr_count, tx);
 mutex_exit(&hdl->sa_lock);
 return (error);
}
