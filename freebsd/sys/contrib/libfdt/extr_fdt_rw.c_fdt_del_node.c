
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_RW_CHECK_HEADER (void*) ;
 int fdt_node_end_offset_ (void*,int) ;
 int fdt_offset_ptr_w_ (void*,int) ;
 int fdt_splice_struct_ (void*,int ,int,int ) ;

int fdt_del_node(void *fdt, int nodeoffset)
{
 int endoffset;

 FDT_RW_CHECK_HEADER(fdt);

 endoffset = fdt_node_end_offset_(fdt, nodeoffset);
 if (endoffset < 0)
  return endoffset;

 return fdt_splice_struct_(fdt, fdt_offset_ptr_w_(fdt, nodeoffset),
      endoffset - nodeoffset, 0);
}
