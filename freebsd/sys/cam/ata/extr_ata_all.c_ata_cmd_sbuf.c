
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ata_cmd {int sector_count_exp; int sector_count; int features_exp; int lba_high_exp; int lba_mid_exp; int lba_low_exp; int device; int lba_high; int lba_mid; int lba_low; int features; int command; } ;


 int sbuf_printf (struct sbuf*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
ata_cmd_sbuf(struct ata_cmd *cmd, struct sbuf *sb)
{
 sbuf_printf(sb, "%02x %02x %02x %02x "
     "%02x %02x %02x %02x %02x %02x %02x %02x",
     cmd->command, cmd->features,
     cmd->lba_low, cmd->lba_mid, cmd->lba_high, cmd->device,
     cmd->lba_low_exp, cmd->lba_mid_exp, cmd->lba_high_exp,
     cmd->features_exp, cmd->sector_count, cmd->sector_count_exp);
}
