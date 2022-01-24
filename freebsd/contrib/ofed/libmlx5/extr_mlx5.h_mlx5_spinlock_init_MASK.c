#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_spinlock {int /*<<< orphan*/  lock; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct mlx5_spinlock *lock)
{
	lock->in_use = 0;
	return FUNC0(&lock->lock, PTHREAD_PROCESS_PRIVATE);
}