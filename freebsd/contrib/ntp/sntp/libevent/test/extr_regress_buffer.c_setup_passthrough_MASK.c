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
struct testcase_t {void* setup_data; } ;

/* Variables and functions */

__attribute__((used)) static void *
FUNC0(const struct testcase_t *testcase)
{
	return testcase->setup_data;
}