
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int ginfo; } ;
struct objfile {int dummy; } ;


 scalar_t__ SYMBOL_BFD_SECTION (struct symbol*) ;
 int fixup_section (int *,struct objfile*) ;

struct symbol *
fixup_symbol_section (struct symbol *sym, struct objfile *objfile)
{
  if (!sym)
    return ((void*)0);

  if (SYMBOL_BFD_SECTION (sym))
    return sym;

  fixup_section (&sym->ginfo, objfile);

  return sym;
}
