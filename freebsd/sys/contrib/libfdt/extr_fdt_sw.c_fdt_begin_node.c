
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_node_header {int name; int tag; } ;


 int FDT_BEGIN_NODE ;
 int FDT_ERR_NOSPACE ;
 int FDT_SW_CHECK_HEADER (void*) ;
 scalar_t__ FDT_TAGALIGN (int) ;
 int cpu_to_fdt32 (int ) ;
 struct fdt_node_header* fdt_grab_space_ (void*,scalar_t__) ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;

int fdt_begin_node(void *fdt, const char *name)
{
 struct fdt_node_header *nh;
 int namelen = strlen(name) + 1;

 FDT_SW_CHECK_HEADER(fdt);

 nh = fdt_grab_space_(fdt, sizeof(*nh) + FDT_TAGALIGN(namelen));
 if (! nh)
  return -FDT_ERR_NOSPACE;

 nh->tag = cpu_to_fdt32(FDT_BEGIN_NODE);
 memcpy(nh->name, name, namelen);
 return 0;
}
