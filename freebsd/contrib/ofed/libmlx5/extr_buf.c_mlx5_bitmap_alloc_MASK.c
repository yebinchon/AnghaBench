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
typedef  int uint32_t ;
struct mlx5_bitmap {int max; int last; int top; int /*<<< orphan*/  avail; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5_bitmap *bitmap)
{
	uint32_t obj;
	int ret;

	obj = FUNC0(bitmap->table, bitmap->max);
	if (obj < bitmap->max) {
		FUNC1(obj, bitmap->table);
		bitmap->last = (obj + 1);
		if (bitmap->last == bitmap->max)
			bitmap->last = 0;
		obj |= bitmap->top;
		ret = obj;
	} else
		ret = -1;

	if (ret != -1)
		--bitmap->avail;

	return ret;
}