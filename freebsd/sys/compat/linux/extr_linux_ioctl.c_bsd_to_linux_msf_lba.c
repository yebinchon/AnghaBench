
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int frame; int second; int minute; } ;
union msf_lba {TYPE_2__ msf; int lba; } ;
struct TYPE_3__ {int frame; int second; int minute; } ;
union linux_cdrom_addr {TYPE_1__ msf; int lba; } ;
typedef scalar_t__ u_char ;


 scalar_t__ CD_LBA_FORMAT ;

__attribute__((used)) static void
bsd_to_linux_msf_lba(u_char af, union msf_lba *bp, union linux_cdrom_addr *lp)
{
 if (af == CD_LBA_FORMAT)
  lp->lba = bp->lba;
 else {
  lp->msf.minute = bp->msf.minute;
  lp->msf.second = bp->msf.second;
  lp->msf.frame = bp->msf.frame;
 }
}
