
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x_lnno; } ;
struct TYPE_6__ {TYPE_1__ x_lnsz; } ;
struct TYPE_7__ {TYPE_2__ x_misc; } ;
union internal_auxent {TYPE_3__ x_sym; } ;
struct objfile {int obfd; scalar_t__ sym_private; } ;
struct internal_syment {scalar_t__ n_sclass; int n_offset; char* n_name; scalar_t__ n_numaux; int n_type; } ;
struct coff_symfile_info {int symtbl_num_syms; char* symtbl; char* strtbl; } ;
struct TYPE_8__ {struct objfile* objfile; } ;


 scalar_t__ C_FCN ;
 scalar_t__ DEPRECATED_STREQ (char*,char*) ;
 int bf_notfound_complaint () ;
 int bfd_coff_swap_aux_in (int ,char*,int ,scalar_t__,int ,scalar_t__,union internal_auxent*) ;
 int bfd_coff_swap_sym_in (int ,char*,struct internal_syment*) ;
 int bfd_xcoff_is_xcoff64 (int ) ;
 int local_symesz ;
 int symfile_bfd ;
 TYPE_4__* this_symtab_psymtab ;

__attribute__((used)) static int
read_symbol_lineno (int symno)
{
  struct objfile *objfile = this_symtab_psymtab->objfile;
  int xcoff64 = bfd_xcoff_is_xcoff64 (objfile->obfd);

  struct coff_symfile_info *info =
    (struct coff_symfile_info *)objfile->sym_private;
  int nsyms = info->symtbl_num_syms;
  char *stbl = info->symtbl;
  char *strtbl = info->strtbl;

  struct internal_syment symbol[1];
  union internal_auxent main_aux[1];

  if (symno < 0)
    {
      bf_notfound_complaint ();
      return 0;
    }
  while (symno < nsyms)
    {
      bfd_coff_swap_sym_in (symfile_bfd,
       stbl + (symno * local_symesz), symbol);
      if (symbol->n_sclass == C_FCN)
 {
   char *name = xcoff64 ? strtbl + symbol->n_offset : symbol->n_name;
   if (DEPRECATED_STREQ (name, ".bf"))
     goto gotit;
 }
      symno += symbol->n_numaux + 1;
    }

  bf_notfound_complaint ();
  return 0;

gotit:

  symno++;
  bfd_coff_swap_aux_in (objfile->obfd, stbl + symno * local_symesz,
   symbol->n_type, symbol->n_sclass,
   0, symbol->n_numaux, main_aux);

  return main_aux->x_sym.x_misc.x_lnsz.x_lnno;
}
