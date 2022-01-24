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
typedef  int u_int ;
struct a10_aintc_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct a10_aintc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a10_aintc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct a10_aintc_softc *sc, u_int irq)
{
	uint32_t bit, block, value;

	bit = (irq % 32);
	block = (irq / 32);

	FUNC4(&sc->mtx);
	value = FUNC2(sc, FUNC0(block));
	value &= ~(1 << bit);
	FUNC3(sc, FUNC0(block), value);

	value = FUNC2(sc, FUNC1(block));
	value |= (1 << bit);
	FUNC3(sc, FUNC1(block), value);
	FUNC5(&sc->mtx);
}