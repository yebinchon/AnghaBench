
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
struct ses_elm_sas_port_phy {int phy_addr; int other_index; int connector_index; int phy_id; } ;
struct ses_elm_sas_expander_phy {int other_index; int connector_index; } ;
struct TYPE_11__ {struct ses_elm_sas_port_phy* sasport_phys; struct ses_elm_sas_expander_phy* sasexp_phys; } ;
struct TYPE_10__ {TYPE_2__* sas; } ;
struct ses_addl_status {TYPE_4__ proto_data; TYPE_3__ proto_hdr; } ;
struct sbuf {int dummy; } ;
struct TYPE_12__ {struct ses_addl_status addl; } ;
typedef TYPE_5__ ses_element_t ;
struct TYPE_13__ {scalar_t__ elm_type; TYPE_5__* elm_private; } ;
typedef TYPE_6__ enc_element_t ;
struct TYPE_8__ {int num_phys; } ;
struct TYPE_9__ {TYPE_1__ base_hdr; } ;


 scalar_t__ ELMTYP_SAS_EXP ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 scalar_t__ scsi_8btou64 (int ) ;

__attribute__((used)) static void
ses_print_addl_data_sas_type1(char *sesname, struct sbuf *sbp,
         enc_element_t *obj)
{
 int i, num_phys;
 ses_element_t *elmpriv;
 struct ses_addl_status *addl;
 struct ses_elm_sas_expander_phy *exp_phy;
 struct ses_elm_sas_port_phy *port_phy;

 elmpriv = obj->elm_private;
 addl = &(elmpriv->addl);
 sbuf_printf(sbp, ", SAS ");
 if (obj->elm_type == ELMTYP_SAS_EXP) {
  num_phys = addl->proto_hdr.sas->base_hdr.num_phys;
  sbuf_printf(sbp, "Expander: %d phys", num_phys);
  if (addl->proto_data.sasexp_phys == ((void*)0))
   return;
  for (i = 0;i < num_phys;i++) {
   exp_phy = &addl->proto_data.sasexp_phys[i];
   sbuf_printf(sbp, "%s:  phy %d: connector %d other %d\n",
       sesname, i, exp_phy->connector_index,
       exp_phy->other_index);
  }
 } else {
  num_phys = addl->proto_hdr.sas->base_hdr.num_phys;
  sbuf_printf(sbp, "Port: %d phys", num_phys);
  if (addl->proto_data.sasport_phys == ((void*)0))
   return;
  for (i = 0;i < num_phys;i++) {
   port_phy = &addl->proto_data.sasport_phys[i];
   sbuf_printf(sbp,
       "%s:  phy %d: id %d connector %d other %d\n",
       sesname, i, port_phy->phy_id,
       port_phy->connector_index, port_phy->other_index);
   sbuf_printf(sbp, "%s:  phy %d: addr %jx\n", sesname, i,
       (uintmax_t)scsi_8btou64(port_phy->phy_addr));
  }
 }
}
