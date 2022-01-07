
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ semid_t ;
typedef int * sem_t ;


 scalar_t__ SEM_USER ;
 int ksem_destroy (scalar_t__) ;
 scalar_t__ ksem_init (scalar_t__*,unsigned int) ;
 int * sem_alloc (unsigned int,scalar_t__,int) ;

int
_libc_sem_init_compat(sem_t *sem, int pshared, unsigned int value)
{
 semid_t semid;







 semid = (semid_t)SEM_USER;
 if ((pshared != 0) && ksem_init(&semid, value) != 0)
  return (-1);

 *sem = sem_alloc(value, semid, pshared);
 if ((*sem) == ((void*)0)) {
  if (pshared != 0)
   ksem_destroy(semid);
  return (-1);
 }
 return (0);
}
