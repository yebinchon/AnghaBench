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
typedef  int /*<<< orphan*/  uint32_t ;
struct uart_softc {int /*<<< orphan*/  sc_hwsig; } ;

/* Variables and functions */
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc, int sig)
{
	uint32_t new, old;

	do {
		old = sc->sc_hwsig;
		new = old;
		if (sig & SER_DDTR) {
			FUNC0(sig & SER_DTR, new, SER_DTR, SER_DDTR);
		}
		if (sig & SER_DRTS) {
			FUNC0(sig & SER_RTS, new, SER_RTS, SER_DRTS);
		}
	 } while (!FUNC1(&sc->sc_hwsig, old, new));

	return (0);
}