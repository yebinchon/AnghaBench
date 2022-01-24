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
typedef  scalar_t__ uint64_t ;
struct s10_svc_softc {int (* callfn ) (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ;} ;
struct s10_svc_msg {int command; int /*<<< orphan*/  payload_length; int /*<<< orphan*/  payload; scalar_t__ flags; } ;
struct arm_smccc_res {int dummy; } ;
typedef  scalar_t__ register_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  COMMAND_RECONFIG 130 
#define  COMMAND_RECONFIG_DATA_CLAIM 129 
#define  COMMAND_RECONFIG_DATA_SUBMIT 128 
 scalar_t__ INTEL_SIP_SMC_FPGA_CONFIG_START ; 
 scalar_t__ INTEL_SIP_SMC_FPGA_CONFIG_WRITE ; 
 struct s10_svc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct s10_svc_softc*) ; 
 int FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 

int
FUNC3(device_t dev, struct s10_svc_msg *msg)
{
	struct s10_svc_softc *sc;
	struct arm_smccc_res res;
	register_t a0, a1, a2;
	int ret;

	sc = FUNC0(dev);

	a0 = 0;
	a1 = 0;
	a2 = 0;

	switch (msg->command) {
	case COMMAND_RECONFIG:
		a0 = INTEL_SIP_SMC_FPGA_CONFIG_START;
		a1 = msg->flags;
		break;
	case COMMAND_RECONFIG_DATA_SUBMIT:
		a0 = INTEL_SIP_SMC_FPGA_CONFIG_WRITE;
		a1 = (uint64_t)msg->payload;
		a2 = (uint64_t)msg->payload_length;
		break;
	case COMMAND_RECONFIG_DATA_CLAIM:
		ret = FUNC1(sc);
		return (ret);
	default:
		return (-1);
	}

	ret = sc->callfn(a0, a1, a2, 0, 0, 0, 0, 0, &res);

	return (ret);
}