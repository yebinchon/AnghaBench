
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADOFFSET ;
 scalar_t__ FDT_PROP ;
 int FDT_TAGSIZE ;
 scalar_t__ fdt_next_tag (void const*,int,int*) ;

int fdt_check_prop_offset_(const void *fdt, int offset)
{
 if ((offset < 0) || (offset % FDT_TAGSIZE)
     || (fdt_next_tag(fdt, offset, &offset) != FDT_PROP))
  return -FDT_ERR_BADOFFSET;

 return offset;
}
