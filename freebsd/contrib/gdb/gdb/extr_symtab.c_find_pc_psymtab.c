
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_mapped_section (int ) ;
 struct partial_symtab* find_pc_sect_psymtab (int ,int ) ;

struct partial_symtab *
find_pc_psymtab (CORE_ADDR pc)
{
  return find_pc_sect_psymtab (pc, find_pc_mapped_section (pc));
}
