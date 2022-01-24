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
struct dbm_res {int member_0; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
#define  ITER_ARCH 130 
#define  ITER_MACRO 129 
#define  ITER_NONE 128 
 int iteration ; 
 struct dbm_res FUNC0 (int /*<<< orphan*/ *) ; 
 struct dbm_res FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dbm_res FUNC2 (int,int /*<<< orphan*/ *) ; 

struct dbm_res
FUNC3(void)
{
	struct dbm_res			 res = {-1, 0};

	switch(iteration) {
	case ITER_NONE:
		return res;
	case ITER_ARCH:
		return FUNC0(NULL);
	case ITER_MACRO:
		return FUNC1(0, NULL);
	default:
		return FUNC2(iteration, NULL);
	}
}