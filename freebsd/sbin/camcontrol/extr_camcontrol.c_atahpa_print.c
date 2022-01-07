
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct TYPE_4__ {int command2; } ;
struct TYPE_3__ {int command1; int command2; } ;
struct ata_params {TYPE_2__ enabled; TYPE_1__ support; scalar_t__ lba_size48_4; scalar_t__ lba_size48_3; scalar_t__ lba_size48_2; scalar_t__ lba_size48_1; scalar_t__ lba_size_2; scalar_t__ lba_size_1; } ;


 int ATA_SUPPORT_MAXSECURITY ;
 int ATA_SUPPORT_PROTECTED ;
 int printf (char*,...) ;

__attribute__((used)) static void
atahpa_print(struct ata_params *parm, u_int64_t hpasize, int header)
{
 u_int32_t lbasize = (u_int32_t)parm->lba_size_1 |
    ((u_int32_t)parm->lba_size_2 << 16);

 u_int64_t lbasize48 = ((u_int64_t)parm->lba_size48_1) |
    ((u_int64_t)parm->lba_size48_2 << 16) |
    ((u_int64_t)parm->lba_size48_3 << 32) |
    ((u_int64_t)parm->lba_size48_4 << 48);

 if (header) {
  printf("\nFeature                      "
         "Support  Enabled   Value\n");
 }

 printf("Host Protected Area (HPA)      ");
 if (parm->support.command1 & ATA_SUPPORT_PROTECTED) {
  u_int64_t lba = lbasize48 ? lbasize48 : lbasize;
  printf("yes      %s     %ju/%ju\n", (hpasize > lba) ? "yes" : "no ",
   lba, hpasize);

  printf("HPA - Security                 ");
  if (parm->support.command2 & ATA_SUPPORT_MAXSECURITY)
   printf("yes      %s\n", (parm->enabled.command2 &
       ATA_SUPPORT_MAXSECURITY) ? "yes" : "no ");
  else
   printf("no\n");
 } else {
  printf("no\n");
 }
}
