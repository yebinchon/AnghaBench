
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int dummy; } ;
struct partial_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_mapped_section (int ) ;
 struct partial_symbol* find_pc_sect_psymbol (struct partial_symtab*,int ,int ) ;

struct partial_symbol *
find_pc_psymbol (struct partial_symtab *psymtab, CORE_ADDR pc)
{
  return find_pc_sect_psymbol (psymtab, pc, find_pc_mapped_section (pc));
}
