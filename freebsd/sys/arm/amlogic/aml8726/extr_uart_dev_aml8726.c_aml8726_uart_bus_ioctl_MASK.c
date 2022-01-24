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
struct uart_bas {int rclk; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
#define  AML_SOC_HW_REV_M6 133 
#define  AML_SOC_HW_REV_M8 132 
#define  AML_SOC_HW_REV_M8B 131 
 int AML_UART_CONTROL_BAUD_MASK ; 
 int AML_UART_CONTROL_BAUD_WIDTH ; 
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_TWO_WIRE_EN ; 
 int AML_UART_MISC_BAUD_EXT_MASK ; 
 int AML_UART_MISC_BAUD_EXT_SHIFT ; 
 int /*<<< orphan*/  AML_UART_MISC_REG ; 
 int AML_UART_NEW_BAUD_RATE_EN ; 
 int AML_UART_NEW_BAUD_RATE_MASK ; 
 int AML_UART_NEW_BAUD_RATE_SHIFT ; 
 int /*<<< orphan*/  AML_UART_NEW_BAUD_REG ; 
 int EINVAL ; 
 int ENXIO ; 
#define  UART_IOCTL_BAUD 130 
#define  UART_IOCTL_IFLOW 129 
#define  UART_IOCTL_OFLOW 128 
 int /*<<< orphan*/  aml8726_soc_hw_rev ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc, int request, intptr_t data)
{
	struct uart_bas *bas;
	int baudrate, divisor, error;
	uint32_t cr, mr, nbr;

	bas = &sc->sc_bas;
	FUNC1(sc->sc_hwmtx);

	error = 0;
	switch (request) {
	case UART_IOCTL_BAUD:
		cr = FUNC0(bas, AML_UART_CONTROL_REG);
		cr &= AML_UART_CONTROL_BAUD_MASK;

		mr = FUNC0(bas, AML_UART_MISC_REG);
		mr &= AML_UART_MISC_BAUD_EXT_MASK;

		divisor = ((mr >> AML_UART_MISC_BAUD_EXT_SHIFT) <<
		    AML_UART_CONTROL_BAUD_WIDTH) | cr;

		switch (aml8726_soc_hw_rev) {
		case AML_SOC_HW_REV_M6:
		case AML_SOC_HW_REV_M8:
		case AML_SOC_HW_REV_M8B:
			nbr = FUNC0(bas, AML_UART_NEW_BAUD_REG);
			if ((nbr & AML_UART_NEW_BAUD_RATE_EN) != 0) {
				divisor = (nbr & AML_UART_NEW_BAUD_RATE_MASK) >>
				    AML_UART_NEW_BAUD_RATE_SHIFT;
			}
			break;
		default:
			break;
		}

		baudrate = bas->rclk / 4 / (divisor + 1);
		if (baudrate > 0)
			*(int*)data = baudrate;
		else
			error = ENXIO;
		break;

	case UART_IOCTL_IFLOW:
	case UART_IOCTL_OFLOW:
		cr = FUNC0(bas, AML_UART_CONTROL_REG);
		if (data)
			cr &= ~AML_UART_CONTROL_TWO_WIRE_EN;
		else
			cr |= AML_UART_CONTROL_TWO_WIRE_EN;
		FUNC2(bas, AML_UART_CONTROL_REG, cr);
		break;

	default:
		error = EINVAL;
		break;
	}

	FUNC3(sc->sc_hwmtx);

	return (error);
}