
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_7__ {scalar_t__ syssem; int semid; } ;


 int EINVAL ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int entry ;
 int errno ;
 int free (TYPE_1__**) ;
 scalar_t__ ksem_close (int ) ;
 int named_sems_mtx ;
 scalar_t__ sem_check_validity (TYPE_1__**) ;
 int sem_free (TYPE_1__*) ;

int
_libc_sem_close_compat(sem_t *sem)
{

 if (sem_check_validity(sem) != 0)
  return (-1);

 if ((*sem)->syssem == 0) {
  errno = EINVAL;
  return (-1);
 }

 _pthread_mutex_lock(&named_sems_mtx);
 if (ksem_close((*sem)->semid) != 0) {
  _pthread_mutex_unlock(&named_sems_mtx);
  return (-1);
 }
 LIST_REMOVE((*sem), entry);
 _pthread_mutex_unlock(&named_sems_mtx);
 sem_free(*sem);
 *sem = ((void*)0);
 free(sem);
 return (0);
}
