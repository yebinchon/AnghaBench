
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __size_t ;
typedef int UINT32 ;
struct TYPE_2__ {int (* SetVariable ) (int *,int *,int ,int ,void*) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_GUID ;
typedef int CHAR16 ;


 int EFI_OUT_OF_RESOURCES ;
 TYPE_1__* RS ;
 int free (int *) ;
 int stub1 (int *,int *,int ,int ,void*) ;
 scalar_t__ utf8_to_ucs2 (char const*,int **,size_t*) ;

EFI_STATUS
efi_setenv(EFI_GUID *guid, const char *varname, UINT32 attr, void *data, __size_t len)
{
 EFI_STATUS rv;
 CHAR16 *uv;
 size_t ul;

 uv = ((void*)0);
 if (utf8_to_ucs2(varname, &uv, &ul) != 0)
  return (EFI_OUT_OF_RESOURCES);

 rv = RS->SetVariable(uv, guid, attr, len, data);
 free(uv);
 return (rv);
}
