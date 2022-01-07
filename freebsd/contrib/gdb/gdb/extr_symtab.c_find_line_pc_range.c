
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ pc; scalar_t__ line; scalar_t__ end; int section; int symtab; } ;
typedef scalar_t__ CORE_ADDR ;


 int find_line_pc (int ,scalar_t__,scalar_t__*) ;
 struct symtab_and_line find_pc_sect_line (scalar_t__,int ,int ) ;

int
find_line_pc_range (struct symtab_and_line sal, CORE_ADDR *startptr,
      CORE_ADDR *endptr)
{
  CORE_ADDR startaddr;
  struct symtab_and_line found_sal;

  startaddr = sal.pc;
  if (startaddr == 0 && !find_line_pc (sal.symtab, sal.line, &startaddr))
    return 0;
  found_sal = find_pc_sect_line (startaddr, sal.section, 0);
  if (found_sal.line != sal.line)
    {

      *startptr = found_sal.pc;
      *endptr = found_sal.pc;
    }
  else
    {
      *startptr = found_sal.pc;
      *endptr = found_sal.end;
    }
  return 1;
}
