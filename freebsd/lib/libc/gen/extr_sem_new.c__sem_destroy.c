
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _flags; } ;
struct TYPE_6__ {scalar_t__ _magic; TYPE_1__ _kern; } ;
typedef TYPE_2__ sem_t ;


 int EINVAL ;
 int SEM_NAMED ;
 int errno ;
 scalar_t__ sem_check_validity (TYPE_2__*) ;

int
_sem_destroy(sem_t *sem)
{

 if (sem_check_validity(sem) != 0)
  return (-1);

 if (sem->_kern._flags & SEM_NAMED) {
  errno = EINVAL;
  return (-1);
 }
 sem->_magic = 0;
 return (0);
}
