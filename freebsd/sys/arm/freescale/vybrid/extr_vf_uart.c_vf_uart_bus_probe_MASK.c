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
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc)
{
	int error;

	error = FUNC1(&sc->sc_bas);
	if (error)
		return (error);

	sc->sc_rxfifosz = 1;
	sc->sc_txfifosz = 1;

	FUNC0(sc->sc_dev, "Vybrid Family UART");
	return (0);
}