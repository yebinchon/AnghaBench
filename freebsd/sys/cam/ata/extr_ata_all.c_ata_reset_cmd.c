
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int control; } ;
struct ccb_ataio {TYPE_1__ cmd; } ;


 int CAM_ATAIO_CONTROL ;
 int CAM_ATAIO_NEEDRESULT ;
 int bzero (TYPE_1__*,int) ;

void
ata_reset_cmd(struct ccb_ataio *ataio)
{
 bzero(&ataio->cmd, sizeof(ataio->cmd));
 ataio->cmd.flags = CAM_ATAIO_CONTROL | CAM_ATAIO_NEEDRESULT;
 ataio->cmd.control = 0x04;
}
