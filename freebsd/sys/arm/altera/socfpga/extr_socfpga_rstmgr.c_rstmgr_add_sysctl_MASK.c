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
struct sysctl_ctx_list {int dummy; } ;
struct rstmgr_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RSTMGR_SYSCTL_FPGA2HPS ; 
 int /*<<< orphan*/  RSTMGR_SYSCTL_HPS2FPGA ; 
 int /*<<< orphan*/  RSTMGR_SYSCTL_LWHPS2FPGA ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct rstmgr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rstmgr_sysctl ; 

__attribute__((used)) static int
FUNC4(struct rstmgr_softc *sc)
{
	struct sysctl_oid_list *children;
	struct sysctl_ctx_list *ctx;

	ctx = FUNC2(sc->dev);
	children = FUNC1(FUNC3(sc->dev));

	FUNC0(ctx, children, OID_AUTO, "fpga2hps",
	    CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_FPGA2HPS,
	    rstmgr_sysctl, "I", "Enable fpga2hps bridge");
	FUNC0(ctx, children, OID_AUTO, "lwhps2fpga",
	    CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_LWHPS2FPGA,
	    rstmgr_sysctl, "I", "Enable lwhps2fpga bridge");
	FUNC0(ctx, children, OID_AUTO, "hps2fpga",
	    CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_HPS2FPGA,
	    rstmgr_sysctl, "I", "Enable hps2fpga bridge");

	return (0);
}