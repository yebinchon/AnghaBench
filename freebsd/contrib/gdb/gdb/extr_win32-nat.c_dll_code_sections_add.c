
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {scalar_t__ addr; struct target_ops* target; } ;
typedef TYPE_1__ map_code_section_args ;
typedef int bfd ;
typedef int asection ;


 scalar_t__ bfd_check_format (int *,int ) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int bfd_map_over_sections (int *,int *,void*) ;
 int bfd_object ;
 int * bfd_openr (char*,char*) ;
 scalar_t__ bfd_section_vma (int *,int *) ;
 int map_single_dll_code_section ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
  dll_code_sections_add (const char *dll_name, int base_addr, struct target_ops *target)
{
  bfd *dll_bfd;
  map_code_section_args map_args;
  asection *lowest_sect;
  char *name;
  if (dll_name == ((void*)0) || target == ((void*)0))
    return 0;
  name = xstrdup (dll_name);
  dll_bfd = bfd_openr (name, "pei-i386");
  if (dll_bfd == ((void*)0))
    return 0;

  if (bfd_check_format (dll_bfd, bfd_object))
    {
      lowest_sect = bfd_get_section_by_name (dll_bfd, ".text");
      if (lowest_sect == ((void*)0))
 return 0;
      map_args.target = target;
      map_args.addr = base_addr - bfd_section_vma (dll_bfd, lowest_sect);

      bfd_map_over_sections (dll_bfd, &map_single_dll_code_section, (void *) (&map_args));
    }

  return 1;
}
