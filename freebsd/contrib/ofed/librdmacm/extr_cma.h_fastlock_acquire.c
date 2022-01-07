
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; int cnt; } ;
typedef TYPE_1__ fastlock_t ;


 scalar_t__ atomic_fetch_add (int *,int) ;
 int sem_wait (int *) ;

__attribute__((used)) static inline void fastlock_acquire(fastlock_t *lock)
{
 if (atomic_fetch_add(&lock->cnt, 1) > 0)
  sem_wait(&lock->sem);
}
