
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_attr_type_t ;
typedef int dmu_tx_t ;


 int SA_REMOVE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_modify_attrs (TYPE_1__*,int ,int ,int *,int *,int ,int *) ;

int
sa_remove(sa_handle_t *hdl, sa_attr_type_t attr, dmu_tx_t *tx)
{
 int error;

 mutex_enter(&hdl->sa_lock);
 error = sa_modify_attrs(hdl, attr, SA_REMOVE, ((void*)0),
     ((void*)0), 0, tx);
 mutex_exit(&hdl->sa_lock);
 return (error);
}
