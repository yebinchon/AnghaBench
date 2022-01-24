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
struct testcase_t {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct testcase_t const*,void*) ; 
 int /*<<< orphan*/ * global_base ; 
 int* pair ; 

__attribute__((used)) static int
FUNC1(const struct testcase_t *testcase, void *ptr)
{
	int r = FUNC0(testcase, ptr);
	pair[0] = pair[1] = -1;
	global_base = NULL;
	return r;
}