
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_HARDWARE_ERROR_RECORD ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS ;
 int printf (char*) ;

__attribute__((used)) static void
efi_print_var_attr(UINT32 attr)
{
 bool comma = 0;

 if (attr & EFI_VARIABLE_NON_VOLATILE) {
  printf("NV");
  comma = 1;
 }
 if (attr & EFI_VARIABLE_BOOTSERVICE_ACCESS) {
  if (comma == 1)
   printf(",");
  printf("BS");
  comma = 1;
 }
 if (attr & EFI_VARIABLE_RUNTIME_ACCESS) {
  if (comma == 1)
   printf(",");
  printf("RS");
  comma = 1;
 }
 if (attr & EFI_VARIABLE_HARDWARE_ERROR_RECORD) {
  if (comma == 1)
   printf(",");
  printf("HR");
  comma = 1;
 }
 if (attr & EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS) {
  if (comma == 1)
   printf(",");
  printf("AT");
  comma = 1;
 }
}
