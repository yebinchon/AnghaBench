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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cond ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  started ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	FUNC1("2: Second thread.\n");

	FUNC1("2: Locking mutex\n");
	FUNC0(FUNC3(&mutex));
	FUNC1("2: Got mutex.\n");
	started++;

	FUNC0(FUNC4(&mutex));
	FUNC0(FUNC2(&cond));
	FUNC5(1);

	return NULL;
}