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
struct s10_svc_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  method ;
typedef  int /*<<< orphan*/ * intel_smc_callfn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/ * arm_smccc_hvc ; 
 int /*<<< orphan*/ * arm_smccc_smc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static intel_smc_callfn_t
FUNC3(struct s10_svc_softc *sc, phandle_t node)
{
	char method[16];

	if ((FUNC0(node, "method", method, sizeof(method))) > 0) {
		if (FUNC2(method, "hvc") == 0)
			return (arm_smccc_hvc);
		else if (FUNC2(method, "smc") == 0)
			return (arm_smccc_smc);
		else
			FUNC1(sc->dev,
			    "Invalid method \"%s\"\n", method);
	} else
		FUNC1(sc->dev, "SMC method not provided\n");

	return (NULL);
}