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
typedef  int /*<<< orphan*/  uint64_t ;
struct thunder_pem_softc {int /*<<< orphan*/  reg_bsh; int /*<<< orphan*/  reg_bst; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  PEM_CFG_RD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC5(struct thunder_pem_softc *sc, int reg)
{
	uint64_t data;

	/* Write to ADDR register */
	FUNC4(sc->reg_bst, sc->reg_bsh, PEM_CFG_RD,
	    FUNC0(reg));
	FUNC2(sc->reg_bst, sc->reg_bsh, PEM_CFG_RD, 8,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	/* Read from DATA register */
	data = FUNC1(FUNC3(sc->reg_bst, sc->reg_bsh,
	    PEM_CFG_RD));

	return (data);
}