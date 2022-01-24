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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FSL_OCOTP_LAST_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * ocotp_regs ; 
 int /*<<< orphan*/ * ocotp_sc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

uint32_t
FUNC3(bus_size_t off)
{

	if (off > FSL_OCOTP_LAST_REG)
		FUNC2("fsl_ocotp_read_4: offset out of range");

	/* If we have a softcontext use the regular bus_space read. */
	if (ocotp_sc != NULL)
		return (FUNC0(ocotp_sc, off));

	/*
	 * Otherwise establish a tempory device mapping if necessary, and read
	 * the device without any help from bus_space.
	 *
	 * XXX Eventually the code from there down can be deleted.
	 */
	if (ocotp_regs == NULL)
		FUNC1();

	return (ocotp_regs[off / 4]);
}