
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct preloaded_file {char* f_name; int f_addr; } ;


 char* command_errmsg ;
 int debugf (char*) ;
 int fdt_find_static_dtb () ;
 scalar_t__ fdt_load_dtb (int ) ;
 scalar_t__ fdt_load_dtb_addr (int *) ;
 scalar_t__ fdt_platform_load_dtb () ;
 int fdt_platform_load_overlays () ;
 int * fdt_to_load ;
 struct preloaded_file* file_findfile (int *,char*) ;
 int printf (char*,...) ;

int
fdt_setup_fdtp()
{
 struct preloaded_file *bfp;
 vm_offset_t va;

 debugf("fdt_setup_fdtp()\n");


 if ((bfp = file_findfile(((void*)0), "dtb")) != ((void*)0)) {
  if (fdt_load_dtb(bfp->f_addr) == 0) {
   printf("Using DTB from loaded file '%s'.\n",
       bfp->f_name);
   fdt_platform_load_overlays();
   return (0);
  }
 }


 if (fdt_to_load != ((void*)0)) {
  if (fdt_load_dtb_addr(fdt_to_load) == 0) {
   printf("Using DTB from memory address %p.\n",
       fdt_to_load);
   fdt_platform_load_overlays();
   return (0);
  }
 }

 if (fdt_platform_load_dtb() == 0) {
  fdt_platform_load_overlays();
  return (0);
 }


 if ((va = fdt_find_static_dtb()) != 0) {
  if (fdt_load_dtb(va) == 0) {
   printf("Using DTB compiled into kernel.\n");
   return (0);
  }
 }

 command_errmsg = "No device tree blob found!\n";
 return (1);
}
