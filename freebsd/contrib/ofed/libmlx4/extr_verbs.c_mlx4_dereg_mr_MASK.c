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
struct ibv_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_mr*) ; 
 int FUNC1 (struct ibv_mr*) ; 

int FUNC2(struct ibv_mr *mr)
{
	int ret;

	ret = FUNC1(mr);
	if (ret)
		return ret;

	FUNC0(mr);
	return 0;
}