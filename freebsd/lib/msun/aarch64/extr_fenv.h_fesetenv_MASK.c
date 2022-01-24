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
 int const FE_ALL_EXCEPT ; 
 int const _ENABLE_MASK ; 
 int const _ROUND_MASK ; 
 int const _ROUND_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 

inline int
FUNC2(const fenv_t *__envp)
{

	FUNC0((*__envp) & _ENABLE_MASK);
	FUNC1((*__envp) & (FE_ALL_EXCEPT | (_ROUND_MASK << _ROUND_SHIFT)));
	return (0);
}