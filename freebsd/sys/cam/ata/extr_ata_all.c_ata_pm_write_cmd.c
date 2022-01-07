
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int features; int sector_count; int lba_low; int lba_mid; int lba_high; int device; int command; scalar_t__ flags; } ;
struct ccb_ataio {TYPE_1__ cmd; } ;


 int ATA_WRITE_PM ;
 int bzero (TYPE_1__*,int) ;

void
ata_pm_write_cmd(struct ccb_ataio *ataio, int reg, int port, uint32_t val)
{
 bzero(&ataio->cmd, sizeof(ataio->cmd));
 ataio->cmd.flags = 0;
 ataio->cmd.command = ATA_WRITE_PM;
 ataio->cmd.features = reg;
 ataio->cmd.sector_count = val;
 ataio->cmd.lba_low = val >> 8;
 ataio->cmd.lba_mid = val >> 16;
 ataio->cmd.lba_high = val >> 24;
 ataio->cmd.device = port & 0x0f;
}
