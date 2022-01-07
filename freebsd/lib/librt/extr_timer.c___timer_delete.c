
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* timer_t ;
struct TYPE_4__ {int oshandle; int * node; } ;


 int __sigev_delete_node (int *) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sys_ktimer_delete (int ) ;
 int errno ;
 int free (TYPE_1__*) ;

int
__timer_delete(timer_t timerid)
{
 int ret, err;

 if (timerid->node != ((void*)0)) {
  __sigev_list_lock();
  __sigev_delete_node(timerid->node);
  __sigev_list_unlock();
 }
 ret = __sys_ktimer_delete(timerid->oshandle);
 err = errno;
 free(timerid);
 errno = err;
 return (ret);
}
