
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _count; } ;
struct TYPE_6__ {TYPE_1__ _kern; } ;
typedef TYPE_2__ sem_t ;


 scalar_t__ USEM_COUNT (int ) ;
 scalar_t__ sem_check_validity (TYPE_2__*) ;

int
_sem_getvalue(sem_t * __restrict sem, int * __restrict sval)
{

 if (sem_check_validity(sem) != 0)
  return (-1);

 *sval = (int)USEM_COUNT(sem->_kern._count);
 return (0);
}
