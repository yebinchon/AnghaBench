
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_spinlock {int in_use; int lock; } ;


 int abort () ;
 int atomic_thread_fence (int ) ;
 int fprintf (int ,char*) ;
 int memory_order_acq_rel ;
 int mlx5_single_threaded ;
 int pthread_spin_lock (int *) ;
 int stderr ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int mlx5_spin_lock(struct mlx5_spinlock *lock)
{
 if (!mlx5_single_threaded)
  return pthread_spin_lock(&lock->lock);

 if (unlikely(lock->in_use)) {
  fprintf(stderr, "*** ERROR: multithreading vilation ***\n"
   "You are running a multithreaded application but\n"
   "you set MLX5_SINGLE_THREADED=1. Please unset it.\n");
  abort();
 } else {
  lock->in_use = 1;




  atomic_thread_fence(memory_order_acq_rel);
 }

 return 0;
}
