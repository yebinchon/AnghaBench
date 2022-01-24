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
 scalar_t__ DO_KBD ; 
 scalar_t__ DO_SIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBX_NOINTR ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int
FUNC4(int fn)
{

	if (FUNC0(RBX_NOINTR))
		return (0);
	for (;;) {
		if (DO_KBD && FUNC1(1))
			return (fn ? 1 : FUNC1(0));
		if (DO_SIO && FUNC3())
			return (fn ? 1 : FUNC2());
		if (fn)
			return (0);
	}
}