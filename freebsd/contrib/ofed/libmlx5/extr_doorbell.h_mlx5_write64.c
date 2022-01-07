
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_spinlock {int dummy; } ;


 int mlx5_spin_lock (struct mlx5_spinlock*) ;
 int mlx5_spin_unlock (struct mlx5_spinlock*) ;

__attribute__((used)) static inline void mlx5_write64(uint32_t val[2], void *dest, struct mlx5_spinlock *lock)
{
 mlx5_spin_lock(lock);
 *(volatile uint32_t *)dest = val[0];
 *(volatile uint32_t *)(dest + 4) = val[1];
 mlx5_spin_unlock(lock);
}
