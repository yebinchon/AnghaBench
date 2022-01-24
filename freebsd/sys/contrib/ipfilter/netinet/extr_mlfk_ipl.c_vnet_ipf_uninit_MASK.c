#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ipf_running; scalar_t__ ipf_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ V_ipfmain ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void)
{

	if (V_ipfmain.ipf_refcnt)
		return;

	if (V_ipfmain.ipf_running >= 0) {

		if (FUNC4(&V_ipfmain) != 0)
			return;

		V_ipfmain.ipf_running = -2;

		FUNC1(&V_ipfmain);
		if (!FUNC0(curvnet)) {
			FUNC2();
			(void)FUNC3();
		}
	}
}