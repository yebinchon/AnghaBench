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
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int EINVAL ; 
#define  UART_IOCTL_BAUD 129 
#define  UART_IOCTL_BREAK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc, int request, intptr_t data)
{
	struct uart_bas *bas;
	int error;

	bas = &sc->sc_bas;
	error = 0;
	FUNC0(sc->sc_hwmtx);
	switch (request) {
	case UART_IOCTL_BREAK:
	/* TODO */
		break;
	case UART_IOCTL_BAUD:
	/* TODO */
		*(int*)data = 115200;
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC1(sc->sc_hwmtx);

	return (error);
}