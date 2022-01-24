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
typedef  int fexcept_t ;

/* Variables and functions */
 int _ROUND_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

inline int
FUNC2(int __round)
{
	fexcept_t __fcsr;

	if (__round & ~_ROUND_MASK)
		return (-1);

	FUNC0(__fcsr);
	__fcsr &= ~_ROUND_MASK;
	__fcsr |= __round;
	FUNC1(__fcsr);

	return (0);
}