
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int obfd; scalar_t__ sym_private; } ;
struct internal_syment {int n_sclass; int n_offset; scalar_t__ n_zeroes; } ;
struct coff_symfile_info {char* debugsec; } ;
struct TYPE_4__ {scalar_t__ local_symesz; } ;
struct TYPE_3__ {struct objfile* objfile; } ;


 int bfd_coff_swap_sym_in (int ,int ,struct internal_syment*) ;
 TYPE_2__* coff_data (int ) ;
 int complaint (int *,char*) ;
 int raw_symbol ;
 int symfile_complaints ;
 int symnum ;
 TYPE_1__* this_symtab_psymtab ;

__attribute__((used)) static char *
xcoff_next_symbol_text (struct objfile *objfile)
{
  struct internal_syment symbol;
  char *retval;

  objfile = this_symtab_psymtab->objfile;

  bfd_coff_swap_sym_in (objfile->obfd, raw_symbol, &symbol);
  if (symbol.n_zeroes)
    {
      complaint (&symfile_complaints, "Unexpected symbol continuation");



      retval = "";
    }
  else if (symbol.n_sclass & 0x80)
    {
      retval =
 ((struct coff_symfile_info *) objfile->sym_private)->debugsec
 + symbol.n_offset;
      raw_symbol +=
 coff_data (objfile->obfd)->local_symesz;
      ++symnum;
    }
  else
    {
      complaint (&symfile_complaints, "Unexpected symbol continuation");



      retval = "";
    }
  return retval;
}
