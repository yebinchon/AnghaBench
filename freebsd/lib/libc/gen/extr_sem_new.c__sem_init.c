
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_5__ {int _flags; scalar_t__ _count; } ;
struct TYPE_6__ {TYPE_1__ _kern; int _magic; } ;
typedef TYPE_2__ sem_t ;


 int EINVAL ;
 int SEM_MAGIC ;
 unsigned int SEM_VALUE_MAX ;
 int USYNC_PROCESS_SHARED ;
 int bzero (TYPE_2__*,int) ;
 int errno ;

int
_sem_init(sem_t *sem, int pshared, unsigned int value)
{

 if (value > SEM_VALUE_MAX) {
  errno = EINVAL;
  return (-1);
 }

 bzero(sem, sizeof(sem_t));
 sem->_magic = SEM_MAGIC;
 sem->_kern._count = (u_int32_t)value;
 sem->_kern._flags = pshared ? USYNC_PROCESS_SHARED : 0;
 return (0);
}
