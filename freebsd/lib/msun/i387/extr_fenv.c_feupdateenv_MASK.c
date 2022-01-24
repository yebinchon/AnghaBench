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
typedef  int /*<<< orphan*/  fenv_t ;
typedef  int __uint32_t ;
typedef  int __uint16_t ;

/* Variables and functions */
 int FE_ALL_EXCEPT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

int
FUNC5(const fenv_t *envp)
{
	__uint32_t mxcsr;
	__uint16_t status;

	FUNC1(&status);
	if (FUNC0())
		FUNC2(&mxcsr);
	else
		mxcsr = 0;
	FUNC4(envp);
	FUNC3((mxcsr | status) & FE_ALL_EXCEPT);
	return (0);
}