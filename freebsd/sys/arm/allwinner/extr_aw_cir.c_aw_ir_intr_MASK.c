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
struct aw_ir_softc {int /*<<< orphan*/  dev; scalar_t__ dcnt; int /*<<< orphan*/  sc_evdev; } ;

/* Variables and functions */
 int AW_IR_RXINT_RAI_EN ; 
 int AW_IR_RXINT_ROI_EN ; 
 int AW_IR_RXINT_RPEI_EN ; 
 int /*<<< orphan*/  AW_IR_RXSTA ; 
 int AW_IR_RXSTA_CLEARALL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (struct aw_ir_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aw_ir_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct aw_ir_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct aw_ir_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct aw_ir_softc*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct aw_ir_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct aw_ir_softc*) ; 
 int FUNC8 (unsigned long) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct aw_ir_softc *sc;
	uint32_t val;
	int i, dcnt;
	unsigned long ir_code;
	int stat;

	sc = (struct aw_ir_softc *)arg;

	/* Read RX interrupt status */
	val = FUNC1(sc, AW_IR_RXSTA);
	if (bootverbose)
		FUNC9(sc->dev, "RX interrupt status: %x\n", val);

	/* Clean all pending interrupt statuses */
	FUNC2(sc, AW_IR_RXSTA, val | AW_IR_RXSTA_CLEARALL);

	/* When Rx FIFO Data available or Packet end */
	if (val & (AW_IR_RXINT_RAI_EN | AW_IR_RXINT_RPEI_EN)) {
		if (bootverbose)
			FUNC9(sc->dev,
			    "RX FIFO Data available or Packet end\n");
		/* Get available message count in RX FIFO */
		dcnt  = FUNC0(val);
		/* Read FIFO */
		for (i = 0; i < dcnt; i++) {
			if (FUNC3(sc)) {
				if (bootverbose)
					FUNC9(sc->dev,
					    "raw buffer full\n");
				break;
			} else
				FUNC5(sc, FUNC7(sc));
		}
	}

	if (val & AW_IR_RXINT_RPEI_EN) {
		/* RX Packet end */
		if (bootverbose)
			FUNC9(sc->dev, "RX Packet end\n");
		ir_code = FUNC6(sc);
		stat = FUNC8(ir_code);
		if (stat == 0) {
			FUNC10(sc->sc_evdev,
			    EV_MSC, MSC_SCAN, ir_code);
			FUNC11(sc->sc_evdev);
		}
		if (bootverbose) {
			FUNC9(sc->dev, "Final IR code: %lx\n",
			    ir_code);
			FUNC9(sc->dev, "IR code status: %d\n",
			    stat);
		}
		sc->dcnt = 0;
	}
	if (val & AW_IR_RXINT_ROI_EN) {
		/* RX FIFO overflow */
		if (bootverbose)
			FUNC9(sc->dev, "RX FIFO overflow\n");
		/* Flush raw buffer */
		FUNC4(sc);
	}
}