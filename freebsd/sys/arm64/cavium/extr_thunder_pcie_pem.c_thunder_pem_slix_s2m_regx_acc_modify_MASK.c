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
typedef  int uint64_t ;
struct thunder_pem_softc {int /*<<< orphan*/  reg_bst; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SLI_ACC_REG_CNT ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sli0_s2m_regx_base ; 
 scalar_t__ sli1_s2m_regx_base ; 

__attribute__((used)) static void
FUNC5(struct thunder_pem_softc *sc,
    int sli_group, int slix)
{
	uint64_t regval;
	bus_space_handle_t handle = 0;

	FUNC0(slix >= 0 && slix <= SLI_ACC_REG_CNT, ("Invalid SLI index"));

	if (sli_group == 0)
		handle = sli0_s2m_regx_base;
	else if (sli_group == 1)
		handle = sli1_s2m_regx_base;
	else
		FUNC4(sc->dev, "SLI group is not correct\n");

	if (handle) {
		/* Clear lower 32-bits of the SLIx register */
		regval = FUNC2(sc->reg_bst, handle,
		    FUNC1(slix));
		regval &= ~(0xFFFFFFFFUL);
		FUNC3(sc->reg_bst, handle,
		    FUNC1(slix), regval);
	}
}