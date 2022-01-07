
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uintmax_t ;
struct ses_elm_sas_device_phy {int phy_addr; int parent_addr; int target_ports; int initiator_ports; int phy_id; } ;
struct TYPE_12__ {struct ses_elm_sas_device_phy* sasdev_phys; } ;
struct TYPE_11__ {TYPE_8__* sas; } ;
struct ses_addl_status {TYPE_4__ proto_data; TYPE_3__ proto_hdr; int hdr; } ;
struct sbuf {int dummy; } ;
struct TYPE_13__ {struct ses_addl_status addl; } ;
typedef TYPE_5__ ses_element_t ;
struct TYPE_14__ {TYPE_5__* elm_private; } ;
typedef TYPE_6__ enc_element_t ;
struct TYPE_10__ {int num_phys; } ;
struct TYPE_9__ {int dev_slot_num; } ;
struct TYPE_15__ {TYPE_2__ base_hdr; TYPE_1__ type0_eip; } ;


 int SES_PRINT_PORTS (int ,char*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 scalar_t__ scsi_8btou64 (int ) ;
 scalar_t__ ses_elm_addlstatus_eip (int ) ;
 int ses_elm_sas_dev_phy_dev_type (struct ses_elm_sas_device_phy*) ;
 scalar_t__ ses_elm_sas_dev_phy_sata_dev (struct ses_elm_sas_device_phy*) ;
 scalar_t__ ses_elm_sas_type0_not_all_phys (TYPE_8__*) ;

__attribute__((used)) static void
ses_print_addl_data_sas_type0(char *sesname, struct sbuf *sbp,
         enc_element_t *obj)
{
 int i;
 ses_element_t *elmpriv;
 struct ses_addl_status *addl;
 struct ses_elm_sas_device_phy *phy;

 elmpriv = obj->elm_private;
 addl = &(elmpriv->addl);
 sbuf_printf(sbp, ", SAS Slot: %d%s phys",
     addl->proto_hdr.sas->base_hdr.num_phys,
     ses_elm_sas_type0_not_all_phys(addl->proto_hdr.sas) ? "+" : "");
 if (ses_elm_addlstatus_eip(addl->hdr))
  sbuf_printf(sbp, " at slot %d",
      addl->proto_hdr.sas->type0_eip.dev_slot_num);
 sbuf_printf(sbp, "\n");
 if (addl->proto_data.sasdev_phys == ((void*)0))
  return;
 for (i = 0;i < addl->proto_hdr.sas->base_hdr.num_phys;i++) {
  phy = &addl->proto_data.sasdev_phys[i];
  sbuf_printf(sbp, "%s:  phy %d:", sesname, i);
  if (ses_elm_sas_dev_phy_sata_dev(phy))

   sbuf_printf(sbp, " SATA device\n");
  else {
   sbuf_printf(sbp, " SAS device type %d phy %d",
       ses_elm_sas_dev_phy_dev_type(phy), phy->phy_id);
   SES_PRINT_PORTS(phy->initiator_ports, "Initiator");
   SES_PRINT_PORTS(phy->target_ports, "Target");
   sbuf_printf(sbp, "\n");
  }
  sbuf_printf(sbp, "%s:  phy %d: parent %jx addr %jx\n",
      sesname, i,
      (uintmax_t)scsi_8btou64(phy->parent_addr),
      (uintmax_t)scsi_8btou64(phy->phy_addr));
 }
}
