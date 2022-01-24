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
struct kthr {int /*<<< orphan*/  tid; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct kthr* FUNC4 (scalar_t__) ; 
 struct kthr* FUNC5 (int) ; 
 int /*<<< orphan*/ * kvm ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (char *arg, int from_tty)
{
	CORE_ADDR addr;
	struct kthr *thr;

	if (!arg)
		FUNC2 ("proc address for the new context");

	if (kvm == NULL)
		FUNC1 ("only supported for core file target");

	addr = (CORE_ADDR) FUNC6 (arg);

	if (!FUNC0 (addr)) {
		thr = FUNC5((int)addr);
		if (thr == NULL)
			FUNC1 ("invalid pid");
	} else {
		thr = FUNC4(addr);
		if (thr == NULL)
			FUNC1("invalid proc address");
	}
	FUNC3(thr->tid);
}