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
struct resource {int /*<<< orphan*/  r_bushandle; int /*<<< orphan*/  r_bustag; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SOC_CBUS_BASE_ADDR ; 
 int /*<<< orphan*/  AML_SOC_HW_REV_REG ; 
 int /*<<< orphan*/  AML_SOC_METAL_REV_REG ; 
 void* aml8726_soc_hw_rev ; 
 void* aml8726_soc_metal_rev ; 
 void* FUNC0 (struct resource*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	int err;
	struct resource res;

	FUNC3(&res, 0, sizeof(res));

	res.r_bustag = fdtbus_bs_tag;

	err = FUNC1(res.r_bustag, AML_SOC_CBUS_BASE_ADDR, 0x100000,
	    0, &res.r_bushandle);

	if (err)
		FUNC4("Could not allocate resource for SoC identification\n");

	aml8726_soc_hw_rev = FUNC0(&res, AML_SOC_HW_REV_REG);

	aml8726_soc_metal_rev = FUNC0(&res, AML_SOC_METAL_REV_REG);

	FUNC2(res.r_bustag, res.r_bushandle, 0x100000);
}