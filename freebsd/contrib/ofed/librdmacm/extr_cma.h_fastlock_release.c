
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; int cnt; } ;
typedef TYPE_1__ fastlock_t ;


 int atomic_fetch_sub (int *,int) ;
 int sem_post (int *) ;

__attribute__((used)) static inline void fastlock_release(fastlock_t *lock)
{
 if (atomic_fetch_sub(&lock->cnt, 1) > 1)
  sem_post(&lock->sem);
}
