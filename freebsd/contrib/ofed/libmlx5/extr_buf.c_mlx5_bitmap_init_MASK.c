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
typedef  void* uint32_t ;
struct mlx5_bitmap {int /*<<< orphan*/  table; void* max; void* avail; void* mask; scalar_t__ top; scalar_t__ last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mlx5_bitmap *bitmap, uint32_t num,
			    uint32_t mask)
{
	bitmap->last = 0;
	bitmap->top  = 0;
	bitmap->max  = num;
	bitmap->avail = num;
	bitmap->mask = mask;
	bitmap->avail = bitmap->max;
	bitmap->table = FUNC1(FUNC0(bitmap->max), sizeof(uint32_t));
	if (!bitmap->table)
		return -ENOMEM;

	return 0;
}