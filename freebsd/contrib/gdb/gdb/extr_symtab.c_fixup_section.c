
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct general_symbol_info {int section; int bfd_section; int name; } ;


 int SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 int SYMBOL_SECTION (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (int ,int *,struct objfile*) ;

__attribute__((used)) static void
fixup_section (struct general_symbol_info *ginfo, struct objfile *objfile)
{
  struct minimal_symbol *msym;
  msym = lookup_minimal_symbol (ginfo->name, ((void*)0), objfile);

  if (msym)
    {
      ginfo->bfd_section = SYMBOL_BFD_SECTION (msym);
      ginfo->section = SYMBOL_SECTION (msym);
    }
}
