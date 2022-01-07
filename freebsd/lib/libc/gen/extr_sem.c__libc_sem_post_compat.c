
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_4__ {scalar_t__ syssem; int count; scalar_t__ nwaiters; int semid; } ;


 int _umtx_wake (int *) ;
 int atomic_add_rel_int (int *,int) ;
 int ksem_post (int ) ;
 int rmb () ;
 scalar_t__ sem_check_validity (TYPE_1__**) ;

int
_libc_sem_post_compat(sem_t *sem)
{

 if (sem_check_validity(sem) != 0)
  return (-1);

 if ((*sem)->syssem != 0)
  return ksem_post((*sem)->semid);

 atomic_add_rel_int(&(*sem)->count, 1);
 rmb();
 if ((*sem)->nwaiters)
  return _umtx_wake(&(*sem)->count);
 return (0);
}
