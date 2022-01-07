
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_sect_args {void* bss_start; void* data_start; void* text_start; } ;
typedef int bfd ;
typedef int asection ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int bfd_get_section_flags (int *,int *) ;
 void* bfd_get_section_vma (int *,int *) ;

__attribute__((used)) static void
find_sect (bfd *abfd, asection *sect, void *obj)
{
  struct find_sect_args *args = (struct find_sect_args *) obj;

  if (bfd_get_section_flags (abfd, sect) & (SEC_CODE & SEC_READONLY))
    args->text_start = bfd_get_section_vma (abfd, sect);
  else if (bfd_get_section_flags (abfd, sect) & SEC_ALLOC)
    {
      if (bfd_get_section_flags (abfd, sect) & SEC_LOAD)
 {


   if (bfd_get_section_flags (abfd, sect) & SEC_DATA)
     args->data_start = bfd_get_section_vma (abfd, sect);
 }
      else
 args->bss_start = bfd_get_section_vma (abfd, sect);
    }
}
