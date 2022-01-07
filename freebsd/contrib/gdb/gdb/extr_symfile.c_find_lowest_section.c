
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;


 int SEC_LOAD ;
 int bfd_get_section_flags (int *,int *) ;
 scalar_t__ bfd_section_size (int *,int *) ;
 scalar_t__ bfd_section_vma (int *,int *) ;

void
find_lowest_section (bfd *abfd, asection *sect, void *obj)
{
  asection **lowest = (asection **) obj;

  if (0 == (bfd_get_section_flags (abfd, sect) & SEC_LOAD))
    return;
  if (!*lowest)
    *lowest = sect;
  else if (bfd_section_vma (abfd, *lowest) > bfd_section_vma (abfd, sect))
    *lowest = sect;
  else if (bfd_section_vma (abfd, *lowest) == bfd_section_vma (abfd, sect)
    && (bfd_section_size (abfd, (*lowest))
        <= bfd_section_size (abfd, sect)))
    *lowest = sect;
}
