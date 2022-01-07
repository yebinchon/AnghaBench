
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dv_name; } ;
typedef int * EFI_HANDLE ;
typedef char CHAR16 ;


 char* efi_devpath_name (int ) ;
 int * efi_find_handle (TYPE_1__*,int) ;
 int efi_free_devpath_name (char*) ;
 int efi_lookup_devpath (int *) ;
 TYPE_1__ efinet_dev ;
 int pager_output (char*) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int
efinet_dev_print(int verbose)
{
 CHAR16 *text;
 EFI_HANDLE h;
 int unit, ret = 0;

 printf("%s devices:", efinet_dev.dv_name);
 if ((ret = pager_output("\n")) != 0)
  return (ret);

 for (unit = 0, h = efi_find_handle(&efinet_dev, 0);
     h != ((void*)0); h = efi_find_handle(&efinet_dev, ++unit)) {
  printf("    %s%d:", efinet_dev.dv_name, unit);
  if (verbose) {
   text = efi_devpath_name(efi_lookup_devpath(h));
   if (text != ((void*)0)) {
    printf("    %S", text);
    efi_free_devpath_name(text);
   }
  }
  if ((ret = pager_output("\n")) != 0)
   break;
 }
 return (ret);
}
