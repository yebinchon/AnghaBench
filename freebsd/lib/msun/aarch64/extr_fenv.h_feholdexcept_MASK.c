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
typedef  int fenv_t ;

/* Variables and functions */
 int FE_ALL_EXCEPT ; 
 int _ENABLE_MASK ; 
 int _ROUND_MASK ; 
 int _ROUND_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

inline int
FUNC4(fenv_t *__envp)
{
	fenv_t __r;

	FUNC0(__r);
	*__envp = __r & _ENABLE_MASK;
	__r &= ~(_ENABLE_MASK);
	FUNC2(__r);

	FUNC1(__r);
	*__envp |= __r & (FE_ALL_EXCEPT | (_ROUND_MASK << _ROUND_SHIFT));
	__r &= ~(_ENABLE_MASK);
	FUNC3(__r);
	return (0);
}