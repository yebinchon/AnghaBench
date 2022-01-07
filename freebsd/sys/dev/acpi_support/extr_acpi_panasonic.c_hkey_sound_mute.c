
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;

 int HKEY_REG_SOUND_MUTE ;

 int acpi_panasonic_sinf (int ,int ) ;
 int acpi_panasonic_sset (int ,int ,int) ;
 int panasonic ;

__attribute__((used)) static int
hkey_sound_mute(ACPI_HANDLE h, int op, UINT32 *val)
{

 ACPI_SERIAL_ASSERT(panasonic);
 switch (op) {
 case 128:
  if (*val != 0 && *val != 1)
   return (EINVAL);
  acpi_panasonic_sset(h, HKEY_REG_SOUND_MUTE, *val);
  break;
 case 129:
  *val = acpi_panasonic_sinf(h, HKEY_REG_SOUND_MUTE);
  break;
 }

 return (0);
}
