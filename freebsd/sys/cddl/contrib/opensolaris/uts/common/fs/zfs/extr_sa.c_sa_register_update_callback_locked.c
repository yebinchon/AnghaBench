
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sa_update_cb_t ;
struct TYPE_5__ {TYPE_1__* os_sa; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_4__ {int * sa_update_cb; int sa_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

void
sa_register_update_callback_locked(objset_t *os, sa_update_cb_t *func)
{
 ASSERT(MUTEX_HELD(&os->os_sa->sa_lock));
 os->os_sa->sa_update_cb = func;
}
