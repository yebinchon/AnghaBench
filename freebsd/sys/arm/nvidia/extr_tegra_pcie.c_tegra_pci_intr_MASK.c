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
struct tegra_pcib_softc {int /*<<< orphan*/  afi_mem_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFI_INTR_CODE ; 
 int AFI_INTR_CODE_INT_CODE_SM_MSG ; 
 int AFI_INTR_CODE_MASK ; 
 int /*<<< orphan*/  AFI_INTR_SIGNATURE ; 
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static int FUNC3(void *arg)
{
	struct tegra_pcib_softc *sc = arg;
	uint32_t code, signature;

	code = FUNC0(sc->afi_mem_res, AFI_INTR_CODE) & AFI_INTR_CODE_MASK;
	signature = FUNC0(sc->afi_mem_res, AFI_INTR_SIGNATURE);
	FUNC1(sc->afi_mem_res, AFI_INTR_CODE, 0);
	if (code == AFI_INTR_CODE_INT_CODE_SM_MSG)
		return(FILTER_STRAY);

	FUNC2("tegra_pci_intr: code %x sig %x\n", code, signature);
	return (FILTER_HANDLED);
}