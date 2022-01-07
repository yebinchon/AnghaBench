
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
typedef int asection ;
typedef int CORE_ADDR ;


 int * find_pc_overlay (int ) ;
 struct symtab_and_line find_pc_sect_line (int ,int *,int) ;
 int overlay_mapped_address (int ,int *) ;
 scalar_t__ pc_in_unmapped_range (int ,int *) ;

struct symtab_and_line
find_pc_line (CORE_ADDR pc, int notcurrent)
{
  asection *section;

  section = find_pc_overlay (pc);
  if (pc_in_unmapped_range (pc, section))
    pc = overlay_mapped_address (pc, section);
  return find_pc_sect_line (pc, section, notcurrent);
}
