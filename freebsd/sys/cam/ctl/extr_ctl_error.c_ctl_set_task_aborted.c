
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ sense_len; int scsi_status; } ;


 int CTL_CMD_ABORTED ;
 int SCSI_STATUS_TASK_ABORTED ;

void
ctl_set_task_aborted(struct ctl_scsiio *ctsio)
{

 ctsio->scsi_status = SCSI_STATUS_TASK_ABORTED;
 ctsio->sense_len = 0;
 ctsio->io_hdr.status = CTL_CMD_ABORTED;
}
