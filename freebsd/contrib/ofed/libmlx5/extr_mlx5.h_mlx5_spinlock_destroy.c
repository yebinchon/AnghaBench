
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_spinlock {int lock; } ;


 int pthread_spin_destroy (int *) ;

__attribute__((used)) static inline int mlx5_spinlock_destroy(struct mlx5_spinlock *lock)
{
 return pthread_spin_destroy(&lock->lock);
}
