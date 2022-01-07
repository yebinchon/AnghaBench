
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* os_user_ptr; int os_user_ptr_lock; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

void
dmu_objset_set_user(objset_t *os, void *user_ptr)
{
 ASSERT(MUTEX_HELD(&os->os_user_ptr_lock));
 os->os_user_ptr = user_ptr;
}
