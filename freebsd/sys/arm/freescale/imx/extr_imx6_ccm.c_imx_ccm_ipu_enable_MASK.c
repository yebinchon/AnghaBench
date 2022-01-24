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
struct ccm_softc {int dummy; } ;

/* Variables and functions */
 int CCGR3_IPU1_DI0 ; 
 int CCGR3_IPU1_IPU ; 
 int CCGR3_IPU2_DI0 ; 
 int CCGR3_IPU2_IPU ; 
 int /*<<< orphan*/  CCM_CCGR3 ; 
 int FUNC0 (struct ccm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccm_softc*,int /*<<< orphan*/ ,int) ; 
 struct ccm_softc* ccm_sc ; 

void
FUNC2(int ipu)
{
	struct ccm_softc *sc;
	uint32_t reg;

	sc = ccm_sc;
	reg = FUNC0(sc, CCM_CCGR3);
	if (ipu == 1)
		reg |= CCGR3_IPU1_IPU | CCGR3_IPU1_DI0;
	else
		reg |= CCGR3_IPU2_IPU | CCGR3_IPU2_DI0;
	FUNC1(sc, CCM_CCGR3, reg);
}