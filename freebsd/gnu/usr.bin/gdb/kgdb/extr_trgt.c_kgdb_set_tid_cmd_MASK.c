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
struct kthr {scalar_t__ tid; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct kthr* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * kvm ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *arg, int from_tty)
{
	CORE_ADDR addr;
	struct kthr *thr;

	if (!arg)
		FUNC2 ("TID or thread address for the new context");

	addr = (CORE_ADDR) FUNC5 (arg);

	if (kvm != NULL && FUNC0 (addr)) {
		thr = FUNC4(addr);
		if (thr == NULL)
			FUNC1("invalid thread address");
		addr = thr->tid;
	}
	FUNC3(addr);
}