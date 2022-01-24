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
struct ipu_softc {int dummy; } ;

/* Variables and functions */
 int IPU_DI0_STP_REP ; 
 int IPU_DI0_SW_GEN0_1 ; 
 int IPU_DI0_SW_GEN1_1 ; 
 int IPU_DI1_STP_REP ; 
 int IPU_DI1_SW_GEN0_1 ; 
 int IPU_DI1_SW_GEN1_1 ; 
 int FUNC0 (struct ipu_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ipu_softc *sc, int di,
	int wave_gen)
{
	uint32_t addr, reg;

	addr = (di ? IPU_DI1_SW_GEN0_1 : IPU_DI0_SW_GEN0_1)
	    + (wave_gen - 1) * sizeof(uint32_t);
	FUNC1(sc, addr, 0);

	addr = (di ? IPU_DI1_SW_GEN1_1 : IPU_DI0_SW_GEN1_1)
	    + (wave_gen - 1) * sizeof(uint32_t);
	FUNC1(sc, addr, 0);

	addr = (di ? IPU_DI1_STP_REP : IPU_DI0_STP_REP)
	    + (wave_gen - 1) / 2 * sizeof(uint32_t);
	reg = FUNC0(sc, addr);
	if (wave_gen % 2)
		reg &= ~(0xffff);
	else
		reg &= ~(0xffff << 16);
	FUNC1(sc, addr, reg);
}