
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINTN ;
typedef int UINT32 ;
struct TYPE_2__ {scalar_t__ (* GetVariable ) (int *,int *,int *,size_t*,void*) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_GUID ;
typedef int CHAR16 ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_OUT_OF_RESOURCES ;
 scalar_t__ EFI_SUCCESS ;
 TYPE_1__* RS ;
 int free (int *) ;
 scalar_t__ stub1 (int *,int *,int *,size_t*,void*) ;
 scalar_t__ utf8_to_ucs2 (char const*,int **,size_t*) ;

EFI_STATUS
efi_getenv(EFI_GUID *g, const char *v, void *data, size_t *len)
{
 size_t ul;
 CHAR16 *uv;
 UINT32 attr;
 UINTN dl;
 EFI_STATUS rv;

 uv = ((void*)0);
 if (utf8_to_ucs2(v, &uv, &ul) != 0)
  return (EFI_OUT_OF_RESOURCES);
 dl = *len;
 rv = RS->GetVariable(uv, g, &attr, &dl, data);
 if (rv == EFI_SUCCESS || rv == EFI_BUFFER_TOO_SMALL)
  *len = dl;
 free(uv);
 return (rv);
}
