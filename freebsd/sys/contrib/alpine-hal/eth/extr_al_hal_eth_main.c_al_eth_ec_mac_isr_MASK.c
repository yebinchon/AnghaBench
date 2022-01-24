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
typedef  int uint32_t ;
struct al_hal_eth_adapter {scalar_t__ udma_id; int /*<<< orphan*/  name; int /*<<< orphan*/  ec_ints_base; int /*<<< orphan*/  mac_ints_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_INT_GROUP_A ; 
 int /*<<< orphan*/  AL_INT_GROUP_B ; 
 int /*<<< orphan*/  AL_INT_GROUP_C ; 
 int /*<<< orphan*/  AL_INT_GROUP_D ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct al_hal_eth_adapter *adapter)
{
	uint32_t cause;
	FUNC0("[%s]: ethernet interrupts handler\n", adapter->name);

	// only udma 0 allowed to init ec
	if (adapter->udma_id != 0)
		return -EPERM;

	/* read ec cause */
	cause = FUNC1(adapter->ec_ints_base, AL_INT_GROUP_A);
	FUNC0("[%s]: ethernet group A cause 0x%08x\n", adapter->name, cause);
	if (cause & 1)
	{
		cause = FUNC1(adapter->mac_ints_base, AL_INT_GROUP_A);
		FUNC0("[%s]: mac group A cause 0x%08x\n", adapter->name, cause);

		cause = FUNC1(adapter->mac_ints_base, AL_INT_GROUP_B);
		FUNC0("[%s]: mac group B cause 0x%08x\n", adapter->name, cause);

		cause = FUNC1(adapter->mac_ints_base, AL_INT_GROUP_C);
		FUNC0("[%s]: mac group C cause 0x%08x\n", adapter->name, cause);

		cause = FUNC1(adapter->mac_ints_base, AL_INT_GROUP_D);
		FUNC0("[%s]: mac group D cause 0x%08x\n", adapter->name, cause);
	}
	cause = FUNC1(adapter->ec_ints_base, AL_INT_GROUP_B);
	FUNC0("[%s]: ethernet group B cause 0x%08x\n", adapter->name, cause);
	cause = FUNC1(adapter->ec_ints_base, AL_INT_GROUP_C);
	FUNC0("[%s]: ethernet group C cause 0x%08x\n", adapter->name, cause);
	cause = FUNC1(adapter->ec_ints_base, AL_INT_GROUP_D);
	FUNC0("[%s]: ethernet group D cause 0x%08x\n", adapter->name, cause);

	return 0;
}