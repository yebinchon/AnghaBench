
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int obfd; } ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int asection ;


 unsigned long bfd_get_32 (int ,int *) ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,char*,int ,scalar_t__) ;
 scalar_t__ bfd_section_size (int ,int *) ;
 int strlen (char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
get_debug_link_info (struct objfile *objfile, unsigned long *crc32_out)
{
  asection *sect;
  bfd_size_type debuglink_size;
  unsigned long crc32;
  char *contents;
  int crc_offset;
  unsigned char *p;

  sect = bfd_get_section_by_name (objfile->obfd, ".gnu_debuglink");

  if (sect == ((void*)0))
    return ((void*)0);

  debuglink_size = bfd_section_size (objfile->obfd, sect);

  contents = xmalloc (debuglink_size);
  bfd_get_section_contents (objfile->obfd, sect, contents,
       (file_ptr)0, (bfd_size_type)debuglink_size);


  crc_offset = strlen (contents) + 1;
  crc_offset = (crc_offset + 3) & ~3;

  crc32 = bfd_get_32 (objfile->obfd, (bfd_byte *) (contents + crc_offset));

  *crc32_out = crc32;
  return contents;
}
