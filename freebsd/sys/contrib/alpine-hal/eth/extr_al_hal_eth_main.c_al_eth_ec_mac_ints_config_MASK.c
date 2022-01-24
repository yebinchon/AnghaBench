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
struct al_hal_eth_adapter {scalar_t__ udma_id; int /*<<< orphan*/  unit_regs; int /*<<< orphan*/  mac_ints_base; int /*<<< orphan*/  ec_ints_base; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AL_INT_GROUP_A ; 
 int /*<<< orphan*/  AL_INT_GROUP_B ; 
 int /*<<< orphan*/  AL_INT_GROUP_C ; 
 int /*<<< orphan*/  AL_INT_GROUP_D ; 
 int EPERM ; 
 int INT_CONTROL_GRP_CLEAR_ON_READ ; 
 int INT_CONTROL_GRP_SET_ON_POSEDGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct al_hal_eth_adapter *adapter)
{

	FUNC1("eth [%s]: enable ethernet and mac interrupts\n", adapter->name);

	// only udma 0 allowed to init ec
	if (adapter->udma_id != 0)
		return -EPERM;

	/* enable mac ints */
	FUNC2(adapter->ec_ints_base, AL_INT_GROUP_A,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->ec_ints_base, AL_INT_GROUP_B,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->ec_ints_base, AL_INT_GROUP_C,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->ec_ints_base, AL_INT_GROUP_D,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);

	/* unmask MAC int */
	FUNC3(adapter->ec_ints_base, AL_INT_GROUP_A, 8);

	/* enable ec interrupts */
	FUNC2(adapter->mac_ints_base, AL_INT_GROUP_A,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->mac_ints_base, AL_INT_GROUP_B,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->mac_ints_base, AL_INT_GROUP_C,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
	FUNC2(adapter->mac_ints_base, AL_INT_GROUP_D,
		INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);

	/* eee active */
	FUNC3(adapter->mac_ints_base, AL_INT_GROUP_B, FUNC0(14));

	FUNC3(adapter->unit_regs, AL_INT_GROUP_D, FUNC0(11));
	return 0;
}