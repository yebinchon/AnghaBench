
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {void* len; void* nameoff; void* tag; } ;


 int FDT_PROP ;
 int FDT_TAGALIGN (int) ;
 void* cpu_to_fdt32 (int) ;
 int fdt_check_node_offset_ (void*,int) ;
 int fdt_find_add_string_ (void*,char const*) ;
 struct fdt_property* fdt_offset_ptr_w_ (void*,int) ;
 int fdt_splice_struct_ (void*,struct fdt_property*,int ,int) ;

__attribute__((used)) static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
        int len, struct fdt_property **prop)
{
 int proplen;
 int nextoffset;
 int namestroff;
 int err;

 if ((nextoffset = fdt_check_node_offset_(fdt, nodeoffset)) < 0)
  return nextoffset;

 namestroff = fdt_find_add_string_(fdt, name);
 if (namestroff < 0)
  return namestroff;

 *prop = fdt_offset_ptr_w_(fdt, nextoffset);
 proplen = sizeof(**prop) + FDT_TAGALIGN(len);

 err = fdt_splice_struct_(fdt, *prop, 0, proplen);
 if (err)
  return err;

 (*prop)->tag = cpu_to_fdt32(FDT_PROP);
 (*prop)->nameoff = cpu_to_fdt32(namestroff);
 (*prop)->len = cpu_to_fdt32(len);
 return 0;
}
