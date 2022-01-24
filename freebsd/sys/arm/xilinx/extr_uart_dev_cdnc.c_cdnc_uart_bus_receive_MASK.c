#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; TYPE_1__* sc_sysdev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_CHAN_STAT_REG ; 
 int CDNC_UART_CHAN_STAT_REG_RXEMPTY ; 
 int /*<<< orphan*/  CDNC_UART_FIFO ; 
 int CDNC_UART_INT_FRAMING ; 
 int CDNC_UART_INT_PARITY ; 
 int /*<<< orphan*/  CDNC_UART_ISTAT_REG ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 scalar_t__ UART_DEV_CONSOLE ; 
 int UART_STAT_FRAMERR ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t status;
	int c, c_status = 0;

	FUNC3(sc->sc_hwmtx);

	/* Check for parity or framing errors and clear the status bits. */
	status = FUNC0(bas, CDNC_UART_ISTAT_REG);
	if ((status & (CDNC_UART_INT_FRAMING | CDNC_UART_INT_PARITY)) != 0) {
		FUNC1(bas, CDNC_UART_ISTAT_REG,
		    status & (CDNC_UART_INT_FRAMING | CDNC_UART_INT_PARITY));
		if ((status & CDNC_UART_INT_PARITY) != 0)
			c_status |= UART_STAT_PARERR;
		if ((status & CDNC_UART_INT_FRAMING) != 0)
			c_status |= UART_STAT_FRAMERR;
	}

	while ((FUNC0(bas, CDNC_UART_CHAN_STAT_REG) &
		CDNC_UART_CHAN_STAT_REG_RXEMPTY) == 0) {
		c = FUNC0(bas, CDNC_UART_FIFO) & 0xff;
#ifdef KDB
		/* Detect break and drop into debugger. */
		if (c == 0 && (c_status & UART_STAT_FRAMERR) != 0 &&
		    sc->sc_sysdev != NULL &&
		    sc->sc_sysdev->type == UART_DEV_CONSOLE) {
			kdb_break();
			WR4(bas, CDNC_UART_ISTAT_REG, CDNC_UART_INT_FRAMING);
		}
#endif
		FUNC4(sc, c | c_status);
	}

	FUNC5(sc->sc_hwmtx);

	return (0);
}