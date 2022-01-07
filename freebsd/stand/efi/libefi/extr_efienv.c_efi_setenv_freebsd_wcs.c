
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_char ;
struct TYPE_2__ {int (* SetVariable ) (int *,int *,int,int,int *) ;} ;
typedef int EFI_STATUS ;
typedef int CHAR16 ;


 int EFI_OUT_OF_RESOURCES ;
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int FreeBSDBootVarGUID ;
 TYPE_1__* RS ;
 int free (int *) ;
 int stub1 (int *,int *,int,int,int *) ;
 int ucs2len (int *) ;
 scalar_t__ utf8_to_ucs2 (char const*,int **,size_t*) ;

EFI_STATUS
efi_setenv_freebsd_wcs(const char *varname, CHAR16 *valstr)
{
 CHAR16 *var = ((void*)0);
 size_t len;
 EFI_STATUS rv;

 if (utf8_to_ucs2(varname, &var, &len) != 0)
  return (EFI_OUT_OF_RESOURCES);
 rv = RS->SetVariable(var, &FreeBSDBootVarGUID,
     EFI_VARIABLE_BOOTSERVICE_ACCESS | EFI_VARIABLE_RUNTIME_ACCESS,
     (ucs2len(valstr) + 1) * sizeof(efi_char), valstr);
 free(var);
 return (rv);
}
