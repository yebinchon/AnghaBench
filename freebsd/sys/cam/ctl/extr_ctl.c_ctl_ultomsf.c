
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ bin2bcd (int) ;

__attribute__((used)) static void
ctl_ultomsf(uint32_t lba, uint8_t *buf)
{

 lba += 150;
 buf[0] = 0;
 buf[1] = bin2bcd((lba / 75) / 60);
 buf[2] = bin2bcd((lba / 75) % 60);
 buf[3] = bin2bcd(lba % 75);
}
