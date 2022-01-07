
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cnt; int sem; } ;
typedef TYPE_1__ fastlock_t ;


 int atomic_store (int *,int ) ;
 int sem_init (int *,int ,int ) ;

__attribute__((used)) static inline void fastlock_init(fastlock_t *lock)
{
 sem_init(&lock->sem, 0, 0);
 atomic_store(&lock->cnt, 0);
}
