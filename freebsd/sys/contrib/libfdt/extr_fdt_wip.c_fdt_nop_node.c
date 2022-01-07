
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_node_end_offset_ (void*,int) ;
 int fdt_nop_region_ (int ,int) ;
 int fdt_offset_ptr_w (void*,int,int ) ;

int fdt_nop_node(void *fdt, int nodeoffset)
{
 int endoffset;

 endoffset = fdt_node_end_offset_(fdt, nodeoffset);
 if (endoffset < 0)
  return endoffset;

 fdt_nop_region_(fdt_offset_ptr_w(fdt, nodeoffset, 0),
   endoffset - nodeoffset);
 return 0;
}
