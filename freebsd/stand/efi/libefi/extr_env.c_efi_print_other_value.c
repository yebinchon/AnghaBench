
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int UINTN ;


 int CMD_OK ;
 int CMD_WARN ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
efi_print_other_value(uint8_t *data, UINTN datasz)
{
 UINTN i;
 bool is_ascii = 1;

 printf(" = ");
 for (i = 0; i < datasz - 1; i++) {




  if ((data[i] < 32 || data[i] > 126)
      && data[i] != 9 && data[i] != 10 && data[i] != 13) {
   is_ascii = 0;
   break;
  }
 }
 if (data[datasz - 1] != '\0')
  is_ascii = 0;
 if (is_ascii == 1) {
  printf("%s", data);
  if (pager_output("\n"))
   return (CMD_WARN);
 } else {
  if (pager_output("\n"))
   return (CMD_WARN);



  for (i = 0; i < datasz; i++) {
   printf("%02x ", data[i]);
   if ((i + 1) % 4 == 0)
    printf(" ");
   if ((i + 1) % 20 == 0) {
    if (pager_output("\n"))
     return (CMD_WARN);
   }
  }
  if (pager_output("\n"))
   return (CMD_WARN);
 }

 return (CMD_OK);
}
