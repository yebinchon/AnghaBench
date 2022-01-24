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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

int
FUNC4(const fenv_t *envp)
{
	__uint32_t mxcsr;
	__uint16_t status;

	FUNC0(&status);
	FUNC1(&mxcsr);
	FUNC3(envp);
	FUNC2((mxcsr | status) & FE_ALL_EXCEPT);
	return (0);
}