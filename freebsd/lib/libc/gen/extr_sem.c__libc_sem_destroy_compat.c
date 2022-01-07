
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_5__ {scalar_t__ syssem; scalar_t__ nwaiters; scalar_t__ magic; int semid; } ;


 int EBUSY ;
 int errno ;
 int ksem_destroy (int ) ;
 scalar_t__ sem_check_validity (TYPE_1__**) ;
 int sem_free (TYPE_1__*) ;

int
_libc_sem_destroy_compat(sem_t *sem)
{
 int retval;

 if (sem_check_validity(sem) != 0)
  return (-1);





 if ((*sem)->syssem != 0)
  retval = ksem_destroy((*sem)->semid);
 else if ((*sem)->nwaiters > 0) {
  errno = EBUSY;
  retval = -1;
 }
 else {
  retval = 0;
  (*sem)->magic = 0;
 }

 if (retval == 0)
  sem_free(*sem);
 return (retval);
}
