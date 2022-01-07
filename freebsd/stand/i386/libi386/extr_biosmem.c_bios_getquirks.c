
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ quirk; int product; int maker; int bios_vendor; } ;


 TYPE_1__* quirks ;
 scalar_t__ smbios_match (int ,int ,int ) ;

__attribute__((used)) static int
bios_getquirks(void)
{
 int i;

 for (i = 0; quirks[i].quirk != 0; ++i) {
  if (smbios_match(quirks[i].bios_vendor, quirks[i].maker,
      quirks[i].product))
   return (quirks[i].quirk);
 }

 return (0);
}
