
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;


 int FreeBSDBootVarGUID ;
 int efi_delenv (int *,char const*) ;

EFI_STATUS
efi_freebsd_delenv(const char *name)
{
 return (efi_delenv(&FreeBSDBootVarGUID, name));
}
