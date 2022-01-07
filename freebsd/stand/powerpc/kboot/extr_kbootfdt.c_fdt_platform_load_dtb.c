
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_node_to_fdt (void*,char*,int ) ;
 int fdt_create_empty_tree (void*,size_t) ;
 int fdt_linux_fixups (void*) ;
 int fdt_load_dtb_addr (void*) ;
 int fdt_pack (void*) ;
 int fdt_path_offset (void*,char*) ;
 int free (void*) ;
 void* malloc (size_t) ;

int
fdt_platform_load_dtb(void)
{
 void *buffer;
 size_t buflen = 409600;

 buffer = malloc(buflen);
 fdt_create_empty_tree(buffer, buflen);
 add_node_to_fdt(buffer, "/proc/device-tree",
     fdt_path_offset(buffer, "/"));
 fdt_linux_fixups(buffer);

 fdt_pack(buffer);

 fdt_load_dtb_addr(buffer);
 free(buffer);

 return (0);
}
