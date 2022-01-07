
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * caddr_t ;
struct TYPE_2__ {int length; size_t count; int * addr; } ;


 scalar_t__ SMBIOS_GET16 (int *,int ) ;
 int SMBIOS_GET8 (int *,int ) ;
 int * SMBIOS_GETSTR (int *) ;
 TYPE_1__ smbios ;

__attribute__((used)) static caddr_t
smbios_find_struct(int type)
{
 caddr_t dmi;
 size_t i;

 if (smbios.addr == ((void*)0))
  return (((void*)0));

 for (dmi = smbios.addr, i = 0;
      dmi < smbios.addr + smbios.length && i < smbios.count; i++) {
  if (SMBIOS_GET8(dmi, 0) == type)
   return dmi;

  dmi = SMBIOS_GETSTR(dmi);
  while (SMBIOS_GET16(dmi, 0) != 0)
   dmi++;
  dmi += 2;
 }

 return (((void*)0));
}
