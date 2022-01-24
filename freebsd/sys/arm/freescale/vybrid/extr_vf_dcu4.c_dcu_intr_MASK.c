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
struct dcu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCU_INT_STATUS ; 
 int FUNC0 (struct dcu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dcu_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct dcu_softc *sc;
	int reg;

	sc = arg;

	/* Ack interrupts */
	reg = FUNC0(sc, DCU_INT_STATUS);
	FUNC1(sc, DCU_INT_STATUS, reg);

	/* TODO interrupt handler */
}