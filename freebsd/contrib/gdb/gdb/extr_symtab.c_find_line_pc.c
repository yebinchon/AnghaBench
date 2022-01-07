
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {int dummy; } ;
struct linetable {TYPE_1__* item; } ;
struct TYPE_2__ {int pc; } ;
typedef int CORE_ADDR ;


 struct linetable* LINETABLE (struct symtab*) ;
 struct symtab* find_line_symtab (struct symtab*,int,int*,int *) ;

int
find_line_pc (struct symtab *symtab, int line, CORE_ADDR *pc)
{
  struct linetable *l;
  int ind;

  *pc = 0;
  if (symtab == 0)
    return 0;

  symtab = find_line_symtab (symtab, line, &ind, ((void*)0));
  if (symtab != ((void*)0))
    {
      l = LINETABLE (symtab);
      *pc = l->item[ind].pc;
      return 1;
    }
  else
    return 0;
}
