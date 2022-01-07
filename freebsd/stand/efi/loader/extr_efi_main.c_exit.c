
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFI_LOAD_ERROR ;
 int efi_exit (int ) ;

void
exit(int status)
{

 efi_exit(EFI_LOAD_ERROR);
}
