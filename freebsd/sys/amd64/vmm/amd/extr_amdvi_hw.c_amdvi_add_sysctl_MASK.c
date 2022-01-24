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
struct amdvi_softc {int /*<<< orphan*/  end_dev_rid; int /*<<< orphan*/  start_dev_rid; int /*<<< orphan*/  pci_rid; int /*<<< orphan*/  total_cmd; int /*<<< orphan*/  event_intr_cnt; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct amdvi_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdvi_handle_sysctl ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct amdvi_softc *softc)
{
	struct sysctl_oid_list *child;
	struct sysctl_ctx_list *ctx;
	device_t dev;

	dev = softc->dev;
	ctx = FUNC4(dev);
	child = FUNC3(FUNC5(dev));

	FUNC2(ctx, child, OID_AUTO, "event_intr_count", CTLFLAG_RD,
	    &softc->event_intr_cnt, "Event interrupt count");
	FUNC2(ctx, child, OID_AUTO, "command_count", CTLFLAG_RD,
	    &softc->total_cmd, "Command submitted count");
	FUNC1(ctx, child, OID_AUTO, "pci_rid", CTLFLAG_RD,
	    &softc->pci_rid, 0, "IOMMU RID");
	FUNC1(ctx, child, OID_AUTO, "start_dev_rid", CTLFLAG_RD,
	    &softc->start_dev_rid, 0, "Start of device under this IOMMU");
	FUNC1(ctx, child, OID_AUTO, "end_dev_rid", CTLFLAG_RD,
	    &softc->end_dev_rid, 0, "End of device under this IOMMU");
	FUNC0(ctx, child, OID_AUTO, "command_head",
	    CTLTYPE_UINT | CTLFLAG_RD, softc, 0,
	    amdvi_handle_sysctl, "IU", "Command head");
	FUNC0(ctx, child, OID_AUTO, "command_tail",
	    CTLTYPE_UINT | CTLFLAG_RD, softc, 1,
	    amdvi_handle_sysctl, "IU", "Command tail");
	FUNC0(ctx, child, OID_AUTO, "event_head",
	    CTLTYPE_UINT | CTLFLAG_RD, softc, 2,
	    amdvi_handle_sysctl, "IU", "Command head");
	FUNC0(ctx, child, OID_AUTO, "event_tail",
	    CTLTYPE_UINT | CTLFLAG_RD, softc, 3,
	    amdvi_handle_sysctl, "IU", "Command tail");
}