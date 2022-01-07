
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame; int second; int minute; } ;
union linux_cdrom_addr {int lba; TYPE_1__ msf; } ;


 int LINUX_CDROM_MSF ;

__attribute__((used)) static void
set_linux_cdrom_addr(union linux_cdrom_addr *addr, int format, int lba)
{
 if (format == LINUX_CDROM_MSF) {
  addr->msf.frame = lba % 75;
  lba /= 75;
  lba += 2;
  addr->msf.second = lba % 60;
  addr->msf.minute = lba / 60;
 } else
  addr->lba = lba;
}
