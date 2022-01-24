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
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bas; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc)
{
	int error;

	error = FUNC0(&sc->sc_bas);
	if (error)
		return (error);

	sc->sc_rxfifosz = 64;
	sc->sc_txfifosz = 64;
	sc->sc_hwiflow = 1;
	sc->sc_hwoflow = 1;

	FUNC1(sc->sc_dev, "Amlogic aml8726 UART");

	return (0);
}