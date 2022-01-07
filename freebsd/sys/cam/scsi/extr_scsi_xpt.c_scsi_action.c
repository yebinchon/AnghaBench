
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {int func_code; TYPE_3__* path; } ;
union ccb {TYPE_1__ crcn; TYPE_2__ ccb_h; int cts; } ;
struct TYPE_7__ {int periph; } ;


 int FALSE ;





 int scsi_dev_advinfo (union ccb*) ;
 int scsi_scan_bus (int ,union ccb*) ;
 int scsi_scan_lun (int ,TYPE_3__*,int ,union ccb*) ;
 int scsi_set_transfer_settings (int *,TYPE_3__*,int ) ;
 int xpt_action_default (union ccb*) ;

__attribute__((used)) static void
scsi_action(union ccb *start_ccb)
{

 switch (start_ccb->ccb_h.func_code) {
 case 128:
 {
  scsi_set_transfer_settings(&start_ccb->cts,
        start_ccb->ccb_h.path,
                        FALSE);
  break;
 }
 case 131:
 case 129:
  scsi_scan_bus(start_ccb->ccb_h.path->periph, start_ccb);
  break;
 case 130:
  scsi_scan_lun(start_ccb->ccb_h.path->periph,
         start_ccb->ccb_h.path, start_ccb->crcn.flags,
         start_ccb);
  break;
 case 132:
 {
  scsi_dev_advinfo(start_ccb);
  break;
 }
 default:
  xpt_action_default(start_ccb);
  break;
 }
}
