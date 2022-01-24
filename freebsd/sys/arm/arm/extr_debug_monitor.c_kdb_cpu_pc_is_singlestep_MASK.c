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
typedef  int /*<<< orphan*/  db_addr_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_TYPE_BREAKPOINT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(db_addr_t pc)
{
	/*
	 * XXX: If the platform fails to enable its debug arch.
	 *      there will be no stepping capabilities
	 *      (SOFTWARE_SSTEP is not defined for __ARM_ARCH >= 6).
	 */
	if (!FUNC0())
		return (FALSE);

	if (FUNC1(DBG_TYPE_BREAKPOINT, pc) != ~0U)
		return (TRUE);

	return (FALSE);
}