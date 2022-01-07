
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _magic; } ;
typedef TYPE_1__ sem_t ;


 int EINVAL ;
 scalar_t__ SEM_MAGIC ;
 int errno ;

__attribute__((used)) static inline int
sem_check_validity(sem_t *sem)
{

 if (sem->_magic == SEM_MAGIC)
  return (0);
 errno = EINVAL;
 return (-1);
}
