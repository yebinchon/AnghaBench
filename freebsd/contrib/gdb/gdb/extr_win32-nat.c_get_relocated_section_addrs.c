
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_table {int endaddr; int addr; } ;
struct section_addr_info {int dummy; } ;
typedef int bfd ;
typedef int asection ;
typedef scalar_t__ CORE_ADDR ;


 int bfd_count_sections (int *) ;
 int * bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_get_section_vma (int *,int *) ;
 struct section_addr_info* build_section_addr_info_from_section_table (struct section_table*,struct section_table*) ;
 int build_section_table (int *,struct section_table**,struct section_table**) ;
 int xfree (struct section_table*) ;

__attribute__((used)) static struct section_addr_info *
get_relocated_section_addrs (bfd *abfd, CORE_ADDR text_load)
{
  struct section_addr_info *result = ((void*)0);
  int section_count = bfd_count_sections (abfd);
  asection *text_section = bfd_get_section_by_name (abfd, ".text");
  CORE_ADDR text_vma;

  if (!text_section)
    {

    }

  else if (text_load == (text_vma = bfd_get_section_vma (abfd, text_section)))
    {

    }

  else
    {




      CORE_ADDR offset = text_load - text_vma;

      struct section_table *table_start = ((void*)0);
      struct section_table *table_end = ((void*)0);
      struct section_table *iter = ((void*)0);

      build_section_table (abfd, &table_start, &table_end);

      for (iter = table_start; iter < table_end; ++iter)
 {

   iter->addr += offset;
   iter->endaddr += offset;
 }

      result = build_section_addr_info_from_section_table (table_start,
          table_end);

      xfree (table_start);
    }

  return result;
}
