
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_header {int dummy; } ;


 struct fdt_header* efi_get_table (int *) ;
 scalar_t__ fdt_load_dtb_addr (struct fdt_header*) ;
 int fdtdtb ;
 int printf (char*,struct fdt_header*) ;

int
fdt_platform_load_dtb(void)
{
 struct fdt_header *hdr;

 hdr = efi_get_table(&fdtdtb);
 if (hdr == ((void*)0))
  return (1);
 if (fdt_load_dtb_addr(hdr) != 0)
  return (1);
 printf("Using DTB provided by EFI at %p.\n", hdr);

 return (0);
}
