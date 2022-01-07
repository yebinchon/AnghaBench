
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_spinlock {int lock; scalar_t__ in_use; } ;


 int PTHREAD_PROCESS_PRIVATE ;
 int pthread_spin_init (int *,int ) ;

__attribute__((used)) static inline int mlx5_spinlock_init(struct mlx5_spinlock *lock)
{
 lock->in_use = 0;
 return pthread_spin_init(&lock->lock, PTHREAD_PROCESS_PRIVATE);
}
