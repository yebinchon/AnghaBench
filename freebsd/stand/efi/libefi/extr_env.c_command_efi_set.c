
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetVariable ) (int *,int *,int,scalar_t__,char*) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_GUID ;
typedef int CHAR16 ;


 int CMD_ERROR ;
 int CMD_OK ;
 scalar_t__ EFI_ERROR (int ) ;
 int EFI_ERROR_CODE (int ) ;
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 TYPE_1__* RS ;
 int cpy8to16 (char*,int *,int ) ;
 int efi_name_to_guid (char*,int *) ;
 int nitems (int *) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;
 int stub1 (int *,int *,int,scalar_t__,char*) ;

__attribute__((used)) static int
command_efi_set(int argc, char *argv[])
{
 char *uuid, *var, *val;
 CHAR16 wvar[128];
 EFI_GUID guid;




 if (argc != 4) {
  printf("efi-set uuid var new-value\n");
  return (CMD_ERROR);
 }
 uuid = argv[1];
 var = argv[2];
 val = argv[3];
 if (efi_name_to_guid(uuid, &guid) == 0) {
  printf("Invalid uuid %s\n", uuid);
  return (CMD_ERROR);
 }
 cpy8to16(var, wvar, nitems(wvar));
 printf("would set %s %s = %s\n", uuid, var, val);

 return (CMD_OK);
}
