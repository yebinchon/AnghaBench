
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sa_update_cb_t ;
struct TYPE_6__ {TYPE_1__* os_sa; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_5__ {int sa_lock; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_register_update_callback_locked (TYPE_2__*,int *) ;

void
sa_register_update_callback(objset_t *os, sa_update_cb_t *func)
{

 mutex_enter(&os->os_sa->sa_lock);
 sa_register_update_callback_locked(os, func);
 mutex_exit(&os->os_sa->sa_lock);
}
