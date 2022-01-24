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
struct thrd_param {int /*<<< orphan*/  arg; scalar_t__ (* func ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC2(void *arg)
{
	struct thrd_param tp;

	tp = *(struct thrd_param *)arg;
	FUNC0(arg);
	return ((void *)(intptr_t)tp.func(tp.arg));
}