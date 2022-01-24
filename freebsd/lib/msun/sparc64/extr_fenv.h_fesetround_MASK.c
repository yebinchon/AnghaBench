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
 int _ROUND_MASK ; 
 int _ROUND_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

inline int
FUNC2(int __round)
{
	fenv_t __r;

	if (__round & ~_ROUND_MASK)
		return (-1);
	FUNC1(&__r);
	__r &= ~(_ROUND_MASK << _ROUND_SHIFT);
	__r |= __round << _ROUND_SHIFT;
	FUNC0(__r);
	return (0);
}