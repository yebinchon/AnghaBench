
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sem {int dummy; } ;
typedef int semid_t ;
typedef TYPE_1__* sem_t ;
struct TYPE_3__ {int syssem; int semid; int magic; scalar_t__ nwaiters; scalar_t__ count; } ;


 int EINVAL ;
 int ENOSPC ;
 int SEM_MAGIC ;
 unsigned int SEM_VALUE_MAX ;
 int errno ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static sem_t
sem_alloc(unsigned int value, semid_t semid, int system_sem)
{
 sem_t sem;

 if (value > SEM_VALUE_MAX) {
  errno = EINVAL;
  return (((void*)0));
 }

 sem = (sem_t)malloc(sizeof(struct sem));
 if (sem == ((void*)0)) {
  errno = ENOSPC;
  return (((void*)0));
 }

 sem->count = (u_int32_t)value;
 sem->nwaiters = 0;
 sem->magic = SEM_MAGIC;
 sem->semid = semid;
 sem->syssem = system_sem;
 return (sem);
}
