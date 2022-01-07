
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINTN ;
struct TYPE_2__ {int DeviceHandle; } ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_SUCCESS ;
 TYPE_1__* boot_img ;
 int efi_freebsd_delenv (char const*) ;
 scalar_t__ efi_freebsd_getenv (char const*,char*,int*) ;
 int free (char*) ;
 char* malloc (int) ;
 int parse_loader_efi_config (int ,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
read_loader_env(const char *name, char *def_fn, bool once)
{
 UINTN len;
 char *fn, *freeme = ((void*)0);

 len = 0;
 fn = def_fn;
 if (efi_freebsd_getenv(name, ((void*)0), &len) == EFI_BUFFER_TOO_SMALL) {
  freeme = fn = malloc(len + 1);
  if (fn != ((void*)0)) {
   if (efi_freebsd_getenv(name, fn, &len) != EFI_SUCCESS) {
    free(fn);
    fn = ((void*)0);
    printf(
       "Can't fetch FreeBSD::%s we know is there\n", name);
   } else {




    if (once)
     efi_freebsd_delenv(name);






    fn[len] = '\0';
   }
  } else {
   printf(
      "Can't allocate %d bytes to fetch FreeBSD::%s env var\n",
       len, name);
  }
 }
 if (fn) {
  printf("    Reading loader env vars from %s\n", fn);
  parse_loader_efi_config(boot_img->DeviceHandle, fn);
 }
}
