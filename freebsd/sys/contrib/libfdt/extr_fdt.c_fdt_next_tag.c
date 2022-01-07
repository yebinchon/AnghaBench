
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fdt_property {int dummy; } ;
typedef int fdt32_t ;





 int FDT_ERR_BADSTRUCTURE ;
 int FDT_ERR_TRUNCATED ;


 int FDT_TAGALIGN (int) ;
 int FDT_TAGSIZE ;
 int fdt32_to_cpu (int const) ;
 void* fdt_offset_ptr (void const*,int,int) ;
 int fdt_version (void const*) ;

uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
{
 const fdt32_t *tagp, *lenp;
 uint32_t tag;
 int offset = startoffset;
 const char *p;

 *nextoffset = -FDT_ERR_TRUNCATED;
 tagp = fdt_offset_ptr(fdt, offset, FDT_TAGSIZE);
 if (!tagp)
  return 131;
 tag = fdt32_to_cpu(*tagp);
 offset += FDT_TAGSIZE;

 *nextoffset = -FDT_ERR_BADSTRUCTURE;
 switch (tag) {
 case 132:

  do {
   p = fdt_offset_ptr(fdt, offset++, 1);
  } while (p && (*p != '\0'));
  if (!p)
   return 131;
  break;

 case 128:
  lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
  if (!lenp)
   return 131;

  offset += sizeof(struct fdt_property) - FDT_TAGSIZE
   + fdt32_to_cpu(*lenp);
  if (fdt_version(fdt) < 0x10 && fdt32_to_cpu(*lenp) >= 8 &&
      ((offset - fdt32_to_cpu(*lenp)) % 8) != 0)
   offset += 4;
  break;

 case 131:
 case 130:
 case 129:
  break;

 default:
  return 131;
 }

 if (!fdt_offset_ptr(fdt, startoffset, offset - startoffset))
  return 131;

 *nextoffset = FDT_TAGALIGN(offset);
 return tag;
}
