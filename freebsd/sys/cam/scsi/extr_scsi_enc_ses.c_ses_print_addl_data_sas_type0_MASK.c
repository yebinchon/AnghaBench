#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct ses_elm_sas_device_phy {int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  parent_addr; int /*<<< orphan*/  target_ports; int /*<<< orphan*/  initiator_ports; int /*<<< orphan*/  phy_id; } ;
struct TYPE_12__ {struct ses_elm_sas_device_phy* sasdev_phys; } ;
struct TYPE_11__ {TYPE_8__* sas; } ;
struct ses_addl_status {TYPE_4__ proto_data; TYPE_3__ proto_hdr; int /*<<< orphan*/  hdr; } ;
struct sbuf {int dummy; } ;
struct TYPE_13__ {struct ses_addl_status addl; } ;
typedef  TYPE_5__ ses_element_t ;
struct TYPE_14__ {TYPE_5__* elm_private; } ;
typedef  TYPE_6__ enc_element_t ;
struct TYPE_10__ {int num_phys; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_slot_num; } ;
struct TYPE_15__ {TYPE_2__ base_hdr; TYPE_1__ type0_eip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ses_elm_sas_device_phy*) ; 
 scalar_t__ FUNC5 (struct ses_elm_sas_device_phy*) ; 
 scalar_t__ FUNC6 (TYPE_8__*) ; 

__attribute__((used)) static void
FUNC7(char *sesname, struct sbuf *sbp,
			      enc_element_t *obj)
{
	int i;
	ses_element_t *elmpriv;
	struct ses_addl_status *addl;
	struct ses_elm_sas_device_phy *phy;

	elmpriv = obj->elm_private;
	addl = &(elmpriv->addl);
	FUNC1(sbp, ", SAS Slot: %d%s phys",
	    addl->proto_hdr.sas->base_hdr.num_phys,
	    FUNC6(addl->proto_hdr.sas) ? "+" : "");
	if (FUNC3(addl->hdr))
		FUNC1(sbp, " at slot %d",
		    addl->proto_hdr.sas->type0_eip.dev_slot_num);
	FUNC1(sbp, "\n");
	if (addl->proto_data.sasdev_phys == NULL)
		return;
	for (i = 0;i < addl->proto_hdr.sas->base_hdr.num_phys;i++) {
		phy = &addl->proto_data.sasdev_phys[i];
		FUNC1(sbp, "%s:  phy %d:", sesname, i);
		if (FUNC5(phy))
			/* Spec says all other fields are specific values */
			FUNC1(sbp, " SATA device\n");
		else {
			FUNC1(sbp, " SAS device type %d phy %d",
			    FUNC4(phy), phy->phy_id);
			FUNC0(phy->initiator_ports, "Initiator");
			FUNC0(phy->target_ports, "Target");
			FUNC1(sbp, "\n");
		}
		FUNC1(sbp, "%s:  phy %d: parent %jx addr %jx\n",
		    sesname, i,
		    (uintmax_t)FUNC2(phy->parent_addr),
		    (uintmax_t)FUNC2(phy->phy_addr));
	}
}