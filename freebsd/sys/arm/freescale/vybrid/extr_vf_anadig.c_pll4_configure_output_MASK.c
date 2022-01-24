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
struct anadig_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANADIG_PLL4_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL4_DENOM ; 
 int /*<<< orphan*/  ANADIG_PLL4_NUM ; 
 int PLL4_CTRL_DIV_SEL_M ; 
 int PLL4_CTRL_DIV_SEL_S ; 
 int FUNC0 (struct anadig_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct anadig_softc*,int /*<<< orphan*/ ,int) ; 
 struct anadig_softc* anadig_sc ; 

uint32_t
FUNC2(uint32_t mfi, uint32_t mfn, uint32_t mfd)
{
	struct anadig_softc *sc;
	int reg;

	sc = anadig_sc;

	/*
	 * PLLout = Fsys * (MFI+(MFN/MFD))
	 */

	reg = FUNC0(sc, ANADIG_PLL4_CTRL);
	reg &= ~(PLL4_CTRL_DIV_SEL_M << PLL4_CTRL_DIV_SEL_S);
	reg |= (mfi << PLL4_CTRL_DIV_SEL_S);
	FUNC1(sc, ANADIG_PLL4_CTRL, reg);
	FUNC1(sc, ANADIG_PLL4_NUM, mfn);
	FUNC1(sc, ANADIG_PLL4_DENOM, mfd);

	return (0);
}