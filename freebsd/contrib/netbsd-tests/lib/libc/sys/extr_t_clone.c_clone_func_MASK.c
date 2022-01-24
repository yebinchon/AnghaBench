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
 int CHILDEXIT ; 
 long FROBVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 () ; 
 long FUNC2 () ; 
 long FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (char*,long**,long*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	long *frobp = arg, diff;

	FUNC4("child: stack ~= %p, frobme = %p\n", &frobp, frobp);
	FUNC0(stdout);

	if (frobp[0] != FUNC2())
		return 1;

	if (frobp[0] == FUNC1())
		return 2;

	diff = FUNC3(frobp[1] - (long) &frobp);

	if (diff > 1024)
		return 3;

	frobp[1] = FROBVAL;

	return (CHILDEXIT);
}