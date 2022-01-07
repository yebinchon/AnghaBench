
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_spinlock {scalar_t__ in_use; int lock; } ;


 int mlx5_single_threaded ;
 int pthread_spin_unlock (int *) ;

__attribute__((used)) static inline int mlx5_spin_unlock(struct mlx5_spinlock *lock)
{
 if (!mlx5_single_threaded)
  return pthread_spin_unlock(&lock->lock);

 lock->in_use = 0;

 return 0;
}
