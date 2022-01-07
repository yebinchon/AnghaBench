
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ata_res {int sector_count_exp; int sector_count; int lba_high_exp; int lba_mid_exp; int lba_low_exp; int device; int lba_high; int lba_mid; int lba_low; int error; int status; } ;


 int sbuf_printf (struct sbuf*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int
ata_res_sbuf(struct ata_res *res, struct sbuf *sb)
{

 sbuf_printf(sb, "%02x %02x %02x %02x "
     "%02x %02x %02x %02x %02x %02x %02x",
     res->status, res->error,
     res->lba_low, res->lba_mid, res->lba_high, res->device,
     res->lba_low_exp, res->lba_mid_exp, res->lba_high_exp,
     res->sector_count, res->sector_count_exp);

 return (0);
}
