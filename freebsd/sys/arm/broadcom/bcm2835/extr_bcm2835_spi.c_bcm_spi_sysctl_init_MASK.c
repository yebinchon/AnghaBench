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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bcm_spi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct bcm_spi_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  bcm_spi_clock_proc ; 
 int /*<<< orphan*/  bcm_spi_cpha_proc ; 
 int /*<<< orphan*/  bcm_spi_cpol_proc ; 
 int /*<<< orphan*/  bcm_spi_cspol0_proc ; 
 int /*<<< orphan*/  bcm_spi_cspol1_proc ; 
 int /*<<< orphan*/  bcm_spi_cspol2_proc ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bcm_spi_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;

	/*
	 * Add system sysctl tree/handlers.
	 */
	ctx = FUNC2(sc->sc_dev);
	tree_node = FUNC3(sc->sc_dev);
	tree = FUNC1(tree_node);
	FUNC0(ctx, tree, OID_AUTO, "clock",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_clock_proc, "IU", "SPI BUS clock frequency");
	FUNC0(ctx, tree, OID_AUTO, "cpol",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_cpol_proc, "IU", "SPI BUS clock polarity");
	FUNC0(ctx, tree, OID_AUTO, "cpha",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_cpha_proc, "IU", "SPI BUS clock phase");
	FUNC0(ctx, tree, OID_AUTO, "cspol0",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_cspol0_proc, "IU", "SPI BUS chip select 0 polarity");
	FUNC0(ctx, tree, OID_AUTO, "cspol1",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_cspol1_proc, "IU", "SPI BUS chip select 1 polarity");
	FUNC0(ctx, tree, OID_AUTO, "cspol2",
	    CTLFLAG_RD | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_spi_cspol2_proc, "IU", "SPI BUS chip select 2 polarity");
}