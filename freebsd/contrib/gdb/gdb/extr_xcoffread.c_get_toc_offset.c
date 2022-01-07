
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {scalar_t__ sym_private; } ;
struct coff_symfile_info {int toc_offset; } ;
typedef int CORE_ADDR ;



CORE_ADDR
get_toc_offset (struct objfile *objfile)
{
  if (objfile)
    return ((struct coff_symfile_info *) objfile->sym_private)->toc_offset;
  return 0;
}
