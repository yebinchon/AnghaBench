
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_4__ {scalar_t__ syssem; scalar_t__ count; int semid; } ;


 int ksem_getvalue (int ,int*) ;
 scalar_t__ sem_check_validity (TYPE_1__**) ;

int
_libc_sem_getvalue_compat(sem_t * __restrict sem, int * __restrict sval)
{
 int retval;

 if (sem_check_validity(sem) != 0)
  return (-1);

 if ((*sem)->syssem != 0)
  retval = ksem_getvalue((*sem)->semid, sval);
 else {
  *sval = (int)(*sem)->count;
  retval = 0;
 }
 return (retval);
}
