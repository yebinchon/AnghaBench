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
struct mlx5_spinlock {scalar_t__ in_use; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  mlx5_single_threaded ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct mlx5_spinlock *lock)
{
	if (!mlx5_single_threaded)
		return FUNC0(&lock->lock);

	lock->in_use = 0;

	return 0;
}