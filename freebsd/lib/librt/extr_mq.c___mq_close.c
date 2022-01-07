
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mqd_t ;
struct TYPE_4__ {int oshandle; int * node; } ;


 int __sigev_delete_node (int *) ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int __sys_close (int) ;
 int free (TYPE_1__*) ;

int
__mq_close(mqd_t mqd)
{
 int h;

 if (mqd->node != ((void*)0)) {
  __sigev_list_lock();
  __sigev_delete_node(mqd->node);
  __sigev_list_unlock();
 }
 h = mqd->oshandle;
 free(mqd);
 return (__sys_close(h));
}
