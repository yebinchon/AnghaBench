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
struct al_pcie_port {scalar_t__ rev_id; } ;

/* Variables and functions */
 scalar_t__ AL_PCIE_REV_ID_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(
	struct al_pcie_port	*pcie_port,
	uint32_t		*offset,
	uint32_t		val)
{
	uintptr_t cs2_bit =
		(pcie_port->rev_id == AL_PCIE_REV_ID_3) ? 0x4000 : 0x1000;

	FUNC0((uint32_t *)((uintptr_t)offset | cs2_bit), val);
}