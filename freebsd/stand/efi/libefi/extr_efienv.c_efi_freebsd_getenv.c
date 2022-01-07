
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;


 int FreeBSDBootVarGUID ;
 int efi_getenv (int *,char const*,void*,size_t*) ;

EFI_STATUS
efi_freebsd_getenv(const char *v, void *data, size_t *len)
{

 return (efi_getenv(&FreeBSDBootVarGUID, v, data, len));
}
