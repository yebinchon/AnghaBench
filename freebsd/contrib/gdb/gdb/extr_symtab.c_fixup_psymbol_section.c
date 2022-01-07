
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symbol {int ginfo; } ;
struct objfile {int dummy; } ;


 scalar_t__ SYMBOL_BFD_SECTION (struct partial_symbol*) ;
 int fixup_section (int *,struct objfile*) ;

struct partial_symbol *
fixup_psymbol_section (struct partial_symbol *psym, struct objfile *objfile)
{
  if (!psym)
    return ((void*)0);

  if (SYMBOL_BFD_SECTION (psym))
    return psym;

  fixup_section (&psym->ginfo, objfile);

  return psym;
}
