
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int SetupMode ;
typedef int SecureBoot ;
typedef scalar_t__ EFI_STATUS ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ efi_global_getenv (char*,int*,size_t*) ;
 int efi_status_to_errno (scalar_t__) ;
 int printf (char*,...) ;

int
efi_secure_boot_enabled(void)
{
 UINT8 SecureBoot;
 UINT8 SetupMode;
 size_t length;
 EFI_STATUS status;

 length = sizeof(SecureBoot);
 status = efi_global_getenv("SecureBoot", &SecureBoot, &length);
 if (status != EFI_SUCCESS) {
  if (status == EFI_NOT_FOUND)
   return (0);

  printf("Failed to read \"SecureBoot\" variable\n");
  return (-efi_status_to_errno(status));
 }

 length = sizeof(SetupMode);
 status = efi_global_getenv("SetupMode", &SetupMode, &length);
 if (status != EFI_SUCCESS)
  SetupMode = 0;

 printf("   SecureBoot: %d, SetupMode: %d\n", SecureBoot, SetupMode);

 return (SecureBoot == 1 && SetupMode == 0);
}
