#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {void* kb_data; } ;
struct kmi_softc {int /*<<< orphan*/ * sc_fkeymap; int /*<<< orphan*/  sc_accmap; int /*<<< orphan*/  sc_keymap; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_intr_hl; int /*<<< orphan*/ * sc_mem_res; TYPE_1__ sc_kbd; int /*<<< orphan*/  sc_dev; } ;
typedef  TYPE_1__ keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  KB_OTHER ; 
 int /*<<< orphan*/  KMICR ; 
 int KMICR_EN ; 
 int KMICR_RXINTREN ; 
 int /*<<< orphan*/  KMIDATA ; 
 int /*<<< orphan*/  KMI_DRIVER_NAME ; 
 int KMI_NFKEY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SET_SCANCODE_SET ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  accent_map ; 
 scalar_t__ bootverbose ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kmi_softc*,int /*<<< orphan*/ *) ; 
 struct kmi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fkey_tab ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  key_map ; 
 int kmi_attached ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  pl050_kmi_intr ; 
 int /*<<< orphan*/  FUNC16 (struct kmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kmi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct kmi_softc *sc = FUNC7(dev);
	keyboard_t *kbd;
	int rid;
	int i;
	uint32_t ack;

	sc->sc_dev = dev;
	kbd = &sc->sc_kbd;
	rid = 0;

	sc->sc_mem_res = FUNC4(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC9(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	/* Request the IRQ resources */
	sc->sc_irq_res =  FUNC4(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC9(dev, "Error: could not allocate irq resources\n");
		return (ENXIO);
	}

	/* Setup and enable the timer */
	if (FUNC6(dev, sc->sc_irq_res, INTR_TYPE_CLK,
			NULL, pl050_kmi_intr, sc,
			&sc->sc_intr_hl) != 0) {
		FUNC5(dev, SYS_RES_IRQ, rid,
			sc->sc_irq_res);
		FUNC9(dev, "Unable to setup the clock irq handler.\n");
		return (ENXIO);
	}

	/* TODO: clock & divisor */

	FUNC17(sc, KMICR, KMICR_EN);

	FUNC17(sc, KMIDATA, SET_SCANCODE_SET);
	/* read out ACK */
	ack = FUNC16(sc, KMIDATA);
	/* Set Scan Code set 1 (XT) */
	FUNC17(sc, KMIDATA, 1);
	/* read out ACK */
	ack = FUNC16(sc, KMIDATA);

	FUNC17(sc, KMICR, KMICR_EN | KMICR_RXINTREN);

	FUNC12(kbd, KMI_DRIVER_NAME, KB_OTHER, 
			FUNC8(dev), 0, 0, 0);
	kbd->kb_data = (void *)sc;

	sc->sc_keymap = key_map;
	sc->sc_accmap = accent_map;
	for (i = 0; i < KMI_NFKEY; i++) {
		sc->sc_fkeymap[i] = fkey_tab[i];
	}

	FUNC14(kbd, &sc->sc_keymap, &sc->sc_accmap,
	    sc->sc_fkeymap, KMI_NFKEY);

	FUNC1(kbd);
	FUNC15(kbd);
	FUNC3(kbd);

	FUNC2(kbd);

	if (FUNC13(kbd) < 0) {
		goto detach;
	}
	FUNC0(kbd);

#ifdef KBD_INSTALL_CDEV
	if (kbd_attach(kbd)) {
		goto detach;
	}
#endif

	if (bootverbose) {
		FUNC10(kbd, bootverbose);
	}
	kmi_attached = 1;
	return (0);

detach:
	return (ENXIO);

}