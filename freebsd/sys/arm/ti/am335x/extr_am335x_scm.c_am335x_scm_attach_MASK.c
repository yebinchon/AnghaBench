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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct am335x_scm_softc {int /*<<< orphan*/  sc_temp_oid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int SCM_BGAP_CLRZ ; 
 int SCM_BGAP_CONTCONV ; 
 int /*<<< orphan*/  SCM_BGAP_CTRL ; 
 int SCM_BGAP_SOC ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am335x_scm_temp_sysctl ; 
 struct am335x_scm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct am335x_scm_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *tree;
	uint32_t reg;

	/* Reset the digital outputs. */
	FUNC7(SCM_BGAP_CTRL, 0);
	FUNC6(SCM_BGAP_CTRL, &reg);
	FUNC0(500);
	/* Set continous mode. */
	FUNC7(SCM_BGAP_CTRL, SCM_BGAP_CONTCONV);
	FUNC6(SCM_BGAP_CTRL, &reg);
	FUNC0(500);
	/* Start the ADC conversion. */
	reg = SCM_BGAP_CLRZ | SCM_BGAP_CONTCONV | SCM_BGAP_SOC;
	FUNC7(SCM_BGAP_CTRL, reg);

	/* Temperature sysctl. */
	sc = FUNC3(dev);
        ctx = FUNC4(dev);
	tree = FUNC2(FUNC5(dev));
	sc->sc_temp_oid = FUNC1(ctx, tree, OID_AUTO,
	    "temperature", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
	    dev, 0, am335x_scm_temp_sysctl, "IK", "Current temperature");

	return (0);
}