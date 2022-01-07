
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* AllocatePool ) (int ,size_t,void**) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_DEVICE_PATH ;
typedef char CHAR16 ;


 TYPE_1__* BS ;
 scalar_t__ EFI_ERROR (int ) ;
 int EfiLoaderData ;
 char* efi_translate_devpath (int *) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 int stub1 (int ,size_t,void**) ;
 int utf8_to_ucs2 (char*,char**,size_t*) ;

__attribute__((used)) static CHAR16 *
efi_devpath_to_name(EFI_DEVICE_PATH *devpath)
{
 char *name = ((void*)0);
 CHAR16 *ptr = ((void*)0);
 size_t len;
 int rv;

 name = efi_translate_devpath(devpath);
 if (name == ((void*)0))
  return (((void*)0));





 rv = utf8_to_ucs2(name, &ptr, &len);
 free(name);
 if (rv == 0) {
  CHAR16 *out = ((void*)0);
  EFI_STATUS status;

  status = BS->AllocatePool(EfiLoaderData, len, (void **)&out);
  if (EFI_ERROR(status)) {
   free(ptr);
                 return (out);
  }
  memcpy(out, ptr, len);
  free(ptr);
  ptr = out;
 }

 return (ptr);
}
