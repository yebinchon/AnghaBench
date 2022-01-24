#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  dir; } ;
struct test_file {TYPE_1__ tf_u; scalar_t__ tf_isdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct test_file*) ; 

int
FUNC3(void *arg, void *h)
{
	struct test_file *tf = h;

	if (tf->tf_isdir)
		FUNC1(tf->tf_u.dir);
	else
		FUNC0(tf->tf_u.fd);
	FUNC2(tf);

	return (0);
}