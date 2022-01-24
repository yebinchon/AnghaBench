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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct am335x_ehrpwm_softc {int sc_pwm_period; int sc_pwm_dutyA; int sc_pwm_dutyB; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; int /*<<< orphan*/ * sc_busdev; void* sc_chanB_oid; void* sc_chanA_oid; void* sc_period_oid; void* sc_freq_oid; void* sc_clkdiv_oid; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AQCTL_CAU_CLEAR ; 
 int AQCTL_CBU_CLEAR ; 
 int AQCTL_ZRO_SET ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int DEFAULT_PWM_PERIOD ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPWM_AQCTLA ; 
 int /*<<< orphan*/  EPWM_AQCTLB ; 
 int /*<<< orphan*/  EPWM_CMPA ; 
 int /*<<< orphan*/  EPWM_CMPB ; 
 int FUNC0 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPWM_TBCTL ; 
 int /*<<< orphan*/  EPWM_TBPRD ; 
 int /*<<< orphan*/  EPWM_TZCTL ; 
 int /*<<< orphan*/  EPWM_TZFLG ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct am335x_ehrpwm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct am335x_ehrpwm_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TBCTL_CLKDIV_MASK ; 
 int TBCTL_CTRMODE_MASK ; 
 int TBCTL_CTRMODE_UP ; 
 int TBCTL_FREERUN ; 
 int TBCTL_HSPCLKDIV_MASK ; 
 int /*<<< orphan*/  FUNC6 (struct am335x_ehrpwm_softc*) ; 
 int /*<<< orphan*/  am335x_ehrpwm_sysctl_clkdiv ; 
 int /*<<< orphan*/  am335x_ehrpwm_sysctl_duty ; 
 int /*<<< orphan*/  am335x_ehrpwm_sysctl_freq ; 
 int /*<<< orphan*/  am335x_ehrpwm_sysctl_period ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 struct am335x_ehrpwm_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC13 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct am335x_ehrpwm_softc *sc;
	uint32_t reg;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;

	sc = FUNC12(dev);
	sc->sc_dev = dev;

	FUNC3(sc);

	sc->sc_mem_res = FUNC7(dev, SYS_RES_MEMORY,
	    &sc->sc_mem_rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC15(dev, "cannot allocate memory resources\n");
		goto fail;
	}

	/* Init sysctl interface */
	ctx = FUNC13(sc->sc_dev);
	tree = FUNC14(sc->sc_dev);

	sc->sc_clkdiv_oid = FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "clkdiv", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_ehrpwm_sysctl_clkdiv, "I", "PWM clock prescaler");

	sc->sc_freq_oid = FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "freq", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_ehrpwm_sysctl_freq, "I", "PWM frequency");

	sc->sc_period_oid = FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "period", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_ehrpwm_sysctl_period, "I", "PWM period");

	sc->sc_chanA_oid = FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "dutyA", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_ehrpwm_sysctl_duty, "I", "Channel A duty cycles");

	sc->sc_chanB_oid = FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "dutyB", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    am335x_ehrpwm_sysctl_duty, "I", "Channel B duty cycles");

	/* CONFIGURE EPWM1 */
	reg = FUNC0(sc, EPWM_TBCTL);
	reg &= ~(TBCTL_CLKDIV_MASK | TBCTL_HSPCLKDIV_MASK);
	FUNC1(sc, EPWM_TBCTL, reg);

	sc->sc_pwm_period = DEFAULT_PWM_PERIOD;
	sc->sc_pwm_dutyA = 0;
	sc->sc_pwm_dutyB = 0;
	FUNC6(sc);

	FUNC1(sc, EPWM_TBPRD, sc->sc_pwm_period - 1);
	FUNC1(sc, EPWM_CMPA, sc->sc_pwm_dutyA);
	FUNC1(sc, EPWM_CMPB, sc->sc_pwm_dutyB);

	FUNC1(sc, EPWM_AQCTLA, (AQCTL_ZRO_SET | AQCTL_CAU_CLEAR));
	FUNC1(sc, EPWM_AQCTLB, (AQCTL_ZRO_SET | AQCTL_CBU_CLEAR));

	/* START EPWM */
	reg &= ~TBCTL_CTRMODE_MASK;
	reg |= TBCTL_CTRMODE_UP | TBCTL_FREERUN;
	FUNC1(sc, EPWM_TBCTL, reg);

	FUNC1(sc, EPWM_TZCTL, 0xf);
	reg = FUNC0(sc, EPWM_TZFLG);

	if ((sc->sc_busdev = FUNC11(dev, "pwmbus", -1)) == NULL) {
		FUNC15(dev, "Cannot add child pwmbus\n");
		// This driver can still do things even without the bus child.
	}

	FUNC9(dev);
	return (FUNC8(dev));
fail:
	FUNC2(sc);
	if (sc->sc_mem_res)
		FUNC10(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);

	return(ENXIO);
}