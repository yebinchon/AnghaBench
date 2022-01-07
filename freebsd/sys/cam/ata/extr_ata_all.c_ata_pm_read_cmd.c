
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; int device; int command; int flags; } ;
struct ccb_ataio {TYPE_1__ cmd; } ;


 int ATA_READ_PM ;
 int CAM_ATAIO_NEEDRESULT ;
 int bzero (TYPE_1__*,int) ;

void
ata_pm_read_cmd(struct ccb_ataio *ataio, int reg, int port)
{
 bzero(&ataio->cmd, sizeof(ataio->cmd));
 ataio->cmd.flags = CAM_ATAIO_NEEDRESULT;
 ataio->cmd.command = ATA_READ_PM;
 ataio->cmd.features = reg;
 ataio->cmd.device = port & 0x0f;
}
