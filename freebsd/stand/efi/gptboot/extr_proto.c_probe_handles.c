
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINTN ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 int probe_handle (int ,int *) ;

__attribute__((used)) static void
probe_handles(EFI_HANDLE *handles, UINTN nhandles, EFI_DEVICE_PATH *imgpath)
{
 UINTN i;

 for (i = 0; i < nhandles; i++)
  probe_handle(handles[i], imgpath);
}
