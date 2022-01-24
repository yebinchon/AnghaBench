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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_PART_THUNDERX ; 
 scalar_t__ CPU_PART_THUNDERX_81XX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bcast_tlbi_workaround ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
	u_int midr;

	midr = FUNC4();
	if (FUNC0(midr) == CPU_PART_THUNDERX_81XX)
		FUNC3(bcast_tlbi_workaround, 1);
	else if (FUNC0(midr) == CPU_PART_THUNDERX) {
		if (FUNC2(midr) == 0) {
			/* ThunderX 1.x */
			FUNC3(bcast_tlbi_workaround, 1);
		} else if (FUNC2(midr) == 1 && FUNC1(midr) <= 1) {
			/* ThunderX 2.0 - 2.1 */
			FUNC3(bcast_tlbi_workaround, 1);
		}
	}
}