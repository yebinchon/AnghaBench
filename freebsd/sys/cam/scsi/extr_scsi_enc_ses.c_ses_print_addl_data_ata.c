
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ses_elm_ata_hdr {int target; int bus; } ;
struct TYPE_5__ {struct ses_elm_ata_hdr* ata; } ;
struct ses_addl_status {TYPE_1__ proto_hdr; } ;
struct sbuf {int dummy; } ;
struct TYPE_6__ {struct ses_addl_status addl; } ;
typedef TYPE_2__ ses_element_t ;
struct TYPE_7__ {TYPE_2__* elm_private; } ;
typedef TYPE_3__ enc_element_t ;


 int sbuf_printf (struct sbuf*,char*,int ,int ) ;
 int scsi_4btoul (int ) ;

__attribute__((used)) static void
ses_print_addl_data_ata(struct sbuf *sbp, enc_element_t *obj)
{
 ses_element_t *elmpriv = obj->elm_private;
 struct ses_addl_status *addl = &elmpriv->addl;
 struct ses_elm_ata_hdr *ata = addl->proto_hdr.ata;

 sbuf_printf(sbp, ", SATA Slot: scbus%d target %d\n",
     scsi_4btoul(ata->bus), scsi_4btoul(ata->target));
}
