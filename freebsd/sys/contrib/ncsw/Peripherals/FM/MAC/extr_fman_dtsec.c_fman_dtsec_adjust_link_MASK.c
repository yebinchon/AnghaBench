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
struct dtsec_regs {int /*<<< orphan*/  ecntrl; int /*<<< orphan*/  maccfg2; } ;
typedef  enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef  enum enet_interface { ____Placeholder_enet_interface } enet_interface ;

/* Variables and functions */
 int DTSEC_ECNTRL_R100M ; 
 int EINVAL ; 
 int E_ENET_SPEED_100 ; 
 int E_ENET_SPEED_1000 ; 
 int MACCFG2_BYTE_MODE ; 
 int MACCFG2_FULL_DUPLEX ; 
 int MACCFG2_NIBBLE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

int FUNC3(struct dtsec_regs *regs,
		enum enet_interface iface_mode,
		enum enet_speed speed, bool full_dx)
{
	uint32_t		tmp;

	FUNC0(iface_mode);

	if ((speed == E_ENET_SPEED_1000) && !full_dx)
		return -EINVAL;

	tmp = FUNC1(&regs->maccfg2);
	if (!full_dx)
		tmp &= ~MACCFG2_FULL_DUPLEX;
	else
		tmp |= MACCFG2_FULL_DUPLEX;

	tmp &= ~(MACCFG2_NIBBLE_MODE | MACCFG2_BYTE_MODE);
	if (speed < E_ENET_SPEED_1000)
		tmp |= MACCFG2_NIBBLE_MODE;
	else if (speed == E_ENET_SPEED_1000)
		tmp |= MACCFG2_BYTE_MODE;
	FUNC2(tmp, &regs->maccfg2);

	tmp = FUNC1(&regs->ecntrl);
	if (speed == E_ENET_SPEED_100)
		tmp |= DTSEC_ECNTRL_R100M;
	else
		tmp &= ~DTSEC_ECNTRL_R100M;
	FUNC2(tmp, &regs->ecntrl);

	return 0;
}