
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dev_info_t ;
typedef int boot_order ;
typedef int boot_module_t ;
typedef int boot_current ;
typedef unsigned int UINTN ;
typedef int UINT16 ;
struct TYPE_4__ {int (* Exit ) (int ,int ,int ,int *) ;} ;
struct TYPE_3__ {int (* status ) () ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 TYPE_2__* BS ;
 int DPRINTF (char*) ;
 int EFI_OUT_OF_RESOURCES ;
 scalar_t__ EFI_SUCCESS ;
 int IH ;
 char* PATH_LOADER_EFI ;
 TYPE_1__** boot_modules ;
 scalar_t__ efi_global_getenv (char*,...) ;
 scalar_t__ load_loader (int const**,int **,void**,size_t*,int) ;
 unsigned int num_boot_modules ;
 int printf (char*,...) ;
 char** prio_str ;
 int probe_handle (int ,int *) ;
 int stub1 (int ,int ,int ,int *) ;
 int stub2 () ;
 int try_boot (int const*,int *,void*,size_t) ;

void
choice_protocol(EFI_HANDLE *handles, UINTN nhandles, EFI_DEVICE_PATH *imgpath)
{
 UINT16 boot_current;
 size_t sz;
 UINT16 boot_order[100];
 unsigned i;
 int rv;
 EFI_STATUS status;
 const boot_module_t *mod;
 dev_info_t *dev;
 void *loaderbuf;
 size_t loadersize;


 boot_current = 0;
 sz = sizeof(boot_current);
 if (efi_global_getenv("BootCurrent", &boot_current, &sz) == EFI_SUCCESS) {
  printf("   BootCurrent: %04x\n", boot_current);

  sz = sizeof(boot_order);
  if (efi_global_getenv("BootOrder", &boot_order, &sz) == EFI_SUCCESS) {
   printf("   BootOrder:");
   for (i = 0; i < sz / sizeof(boot_order[0]); i++)
    printf(" %04x%s", boot_order[i],
        boot_order[i] == boot_current ? "[*]" : "");
   printf("\n");
  }
 }
 printf("   Probing %zu block devices...", nhandles);
 DPRINTF("\n");
 for (i = 0; i < nhandles; i++) {
  rv = probe_handle(handles[i], imgpath);



  printf("%s\n", prio_str[rv + 1]);

 }
 printf(" done\n");



 for (i = 0; i < num_boot_modules; i++) {
  printf("    ");
  boot_modules[i]->status();
 }

 status = load_loader(&mod, &dev, &loaderbuf, &loadersize, 1);
 if (status != EFI_SUCCESS) {
  status = load_loader(&mod, &dev, &loaderbuf, &loadersize, 0);
  if (status != EFI_SUCCESS) {
   printf("Failed to load '%s'\n", PATH_LOADER_EFI);
   return;
  }
 }

 try_boot(mod, dev, loaderbuf, loadersize);
}
