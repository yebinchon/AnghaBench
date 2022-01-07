
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
struct fdt_header {int dummy; } ;
struct arm64_bootparams {scalar_t__ modulep; } ;


 int fake_preload_metadata (struct fdt_header*,int ,struct arm64_bootparams*) ;
 scalar_t__ fdt_check_header (struct fdt_header*) ;
 int fdt_totalsize (struct fdt_header*) ;

vm_offset_t
linux_parse_boot_param(struct arm64_bootparams *abp)
{
 uint32_t dtb_size = 0;
 struct fdt_header *dtb_ptr = ((void*)0);







 return (fake_preload_metadata(dtb_ptr, dtb_size, abp));
}
