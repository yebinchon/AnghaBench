
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT8 ;


 int acpi_hp_hex_to_int (char*,char*) ;
 int rounddown (int,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
acpi_hp_hex_decode(char* buffer)
{
 int i;
 int length = strlen(buffer);
 UINT8 *uin;
 UINT8 uout;

 if (rounddown((int)length, 2) == length || length < 10)
  return;

 for (i = 0; i<length; ++i) {
  if (!((i+1)%3)) {
   if (buffer[i] != ' ')
    return;
  }
  else
   if (!((buffer[i] >= '0' && buffer[i] <= '9') ||
           (buffer[i] >= 'A' && buffer[i] <= 'F')))
    return;
 }

 for (i = 0; i<length; i += 3) {
  uin = &buffer[i];
  uout = 0;
  acpi_hp_hex_to_int(uin, &uout);
  buffer[i/3] = (char) uout;
 }
 buffer[(length+1)/3] = 0;
}
