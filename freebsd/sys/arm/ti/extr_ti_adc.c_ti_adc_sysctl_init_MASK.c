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
struct ti_adc_softc {int sc_adc_nchannels; int* sc_adc_channels; int /*<<< orphan*/  value; int /*<<< orphan*/  sc_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  pinbuf ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ti_adc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  ti_adc_clockdiv_proc ; 
 int /*<<< orphan*/  ti_adc_enable_proc ; 
 struct ti_adc_softc* ti_adc_inputs ; 
 int /*<<< orphan*/  ti_adc_open_delay_proc ; 
 int /*<<< orphan*/  ti_adc_samples_avg_proc ; 

__attribute__((used)) static void
FUNC7(struct ti_adc_softc *sc)
{
	char pinbuf[3];
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node, *inp_node, *inpN_node;
	struct sysctl_oid_list *tree, *inp_tree, *inpN_tree;
	int ain, i;

	/*
	 * Add per-pin sysctl tree/handlers.
	 */
	ctx = FUNC4(sc->sc_dev);
	tree_node = FUNC5(sc->sc_dev);
	tree = FUNC3(tree_node);
	FUNC2(ctx, tree, OID_AUTO, "clockdiv",
	    CTLFLAG_RW | CTLTYPE_UINT,  sc, 0,
	    ti_adc_clockdiv_proc, "IU", "ADC clock prescaler");
	inp_node = FUNC1(ctx, tree, OID_AUTO, "ain",
	    CTLFLAG_RD, NULL, "ADC inputs");
	inp_tree = FUNC3(inp_node);

	for (i = 0; i < sc->sc_adc_nchannels; i++) {
		ain = sc->sc_adc_channels[i];

		FUNC6(pinbuf, sizeof(pinbuf), "%d", ain);
		inpN_node = FUNC1(ctx, inp_tree, OID_AUTO, pinbuf,
		    CTLFLAG_RD, NULL, "ADC input");
		inpN_tree = FUNC3(inpN_node);

		FUNC2(ctx, inpN_tree, OID_AUTO, "enable",
		    CTLFLAG_RW | CTLTYPE_UINT, &ti_adc_inputs[ain], 0,
		    ti_adc_enable_proc, "IU", "Enable ADC input");
		FUNC2(ctx, inpN_tree, OID_AUTO, "open_delay",
		    CTLFLAG_RW | CTLTYPE_UINT,  &ti_adc_inputs[ain], 0,
		    ti_adc_open_delay_proc, "IU", "ADC open delay");
		FUNC2(ctx, inpN_tree, OID_AUTO, "samples_avg",
		    CTLFLAG_RW | CTLTYPE_UINT,  &ti_adc_inputs[ain], 0,
		    ti_adc_samples_avg_proc, "IU", "ADC samples average");
		FUNC0(ctx, inpN_tree, OID_AUTO, "input",
		    CTLFLAG_RD, &ti_adc_inputs[ain].value, 0,
		    "Converted raw value for the ADC input");
	}
}