
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_mapped_section (int ) ;
 struct symtab* find_pc_sect_symtab (int ,int ) ;

struct symtab *
find_pc_symtab (CORE_ADDR pc)
{
  return find_pc_sect_symtab (pc, find_pc_mapped_section (pc));
}
