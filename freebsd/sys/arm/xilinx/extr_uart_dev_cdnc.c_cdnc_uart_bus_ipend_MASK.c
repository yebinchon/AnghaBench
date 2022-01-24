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
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_IDIS_REG ; 
 int CDNC_UART_INT_DMSI ; 
 int CDNC_UART_INT_RXOVR ; 
 int CDNC_UART_INT_RXTMOUT ; 
 int CDNC_UART_INT_RXTRIG ; 
 int CDNC_UART_INT_TXEMPTY ; 
 int CDNC_UART_INT_TXOVR ; 
 int /*<<< orphan*/  CDNC_UART_ISTAT_REG ; 
 int /*<<< orphan*/  CDNC_UART_MODEM_STAT_REG ; 
 int CDNC_UART_MODEM_STAT_REG_DCTS ; 
 int CDNC_UART_MODEM_STAT_REG_DDCD ; 
 int CDNC_UART_MODEM_STAT_REG_DDSR ; 
 int CDNC_UART_MODEM_STAT_REG_TERI ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	int ipend = 0;
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t istatus;

	FUNC2(sc->sc_hwmtx);

	istatus = FUNC0(bas, CDNC_UART_ISTAT_REG);

	/* Clear interrupt bits. */
	FUNC1(bas, CDNC_UART_ISTAT_REG, istatus &
	    (CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT |
	     CDNC_UART_INT_TXOVR | CDNC_UART_INT_RXOVR |
	     CDNC_UART_INT_TXEMPTY | CDNC_UART_INT_DMSI));

	/* Receive data. */
	if ((istatus & (CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT)) != 0)
		ipend |= SER_INT_RXREADY;

	/* Transmit fifo empty. */
	if (sc->sc_txbusy && (istatus & CDNC_UART_INT_TXEMPTY) != 0) {
		/* disable txempty interrupt. */
		FUNC1(bas, CDNC_UART_IDIS_REG, CDNC_UART_INT_TXEMPTY);
		ipend |= SER_INT_TXIDLE;
	}

	/* TX Overflow. */
	if ((istatus & CDNC_UART_INT_TXOVR) != 0)
		ipend |= SER_INT_OVERRUN;

	/* RX Overflow. */
	if ((istatus & CDNC_UART_INT_RXOVR) != 0)
		ipend |= SER_INT_OVERRUN;

	/* Modem signal change. */
	if ((istatus & CDNC_UART_INT_DMSI) != 0) {
		FUNC1(bas, CDNC_UART_MODEM_STAT_REG,
		    CDNC_UART_MODEM_STAT_REG_DDCD |
		    CDNC_UART_MODEM_STAT_REG_TERI |
		    CDNC_UART_MODEM_STAT_REG_DDSR |
		    CDNC_UART_MODEM_STAT_REG_DCTS);
		ipend |= SER_INT_SIGCHG;
	}

	FUNC3(sc->sc_hwmtx);
	return (ipend);
}