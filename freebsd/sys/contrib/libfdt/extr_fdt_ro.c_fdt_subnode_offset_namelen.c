
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_NOTFOUND ;
 int fdt_next_node (void const*,int,int*) ;
 scalar_t__ fdt_nodename_eq_ (void const*,int,char const*,int) ;

int fdt_subnode_offset_namelen(const void *fdt, int offset,
          const char *name, int namelen)
{
 int depth;

 FDT_CHECK_HEADER(fdt);

 for (depth = 0;
      (offset >= 0) && (depth >= 0);
      offset = fdt_next_node(fdt, offset, &depth))
  if ((depth == 1)
      && fdt_nodename_eq_(fdt, offset, name, namelen))
   return offset;

 if (depth < 0)
  return -FDT_ERR_NOTFOUND;
 return offset;
}
