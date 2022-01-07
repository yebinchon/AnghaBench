
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetVariable ) (int *,int *,int ,int ,int *) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_GUID ;
typedef int CHAR16 ;


 int EFI_OUT_OF_RESOURCES ;
 TYPE_1__* RS ;
 int free (int *) ;
 int stub1 (int *,int *,int ,int ,int *) ;
 scalar_t__ utf8_to_ucs2 (char const*,int **,size_t*) ;

EFI_STATUS
efi_delenv(EFI_GUID *guid, const char *name)
{
 CHAR16 *var;
 size_t len;
 EFI_STATUS rv;

 var = ((void*)0);
 if (utf8_to_ucs2(name, &var, &len) != 0)
  return (EFI_OUT_OF_RESOURCES);

 rv = RS->SetVariable(var, guid, 0, 0, ((void*)0));
 free(var);
 return (rv);
}
