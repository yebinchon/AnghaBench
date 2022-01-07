
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct internal_syment {int n_scnum; scalar_t__ n_value; } ;
struct coff_symfile_info {int symtbl_num_syms; char* symtbl; } ;
struct TYPE_4__ {TYPE_1__* objfile; } ;
struct TYPE_3__ {int obfd; scalar_t__ sym_private; } ;


 int bfd_coff_swap_sym_in (int ,char*,struct internal_syment*) ;
 int complaint (int *,char*) ;
 int local_symesz ;
 int symfile_complaints ;
 TYPE_2__* this_symtab_psymtab ;

__attribute__((used)) static void
read_symbol (struct internal_syment *symbol, int symno)
{
  int nsyms =
  ((struct coff_symfile_info *) this_symtab_psymtab->objfile->sym_private)
  ->symtbl_num_syms;
  char *stbl =
  ((struct coff_symfile_info *) this_symtab_psymtab->objfile->sym_private)
  ->symtbl;
  if (symno < 0 || symno >= nsyms)
    {
      complaint (&symfile_complaints, "Invalid symbol offset");
      symbol->n_value = 0;
      symbol->n_scnum = -1;
      return;
    }
  bfd_coff_swap_sym_in (this_symtab_psymtab->objfile->obfd,
   stbl + (symno * local_symesz),
   symbol);
}
