
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union internal_auxent {int dummy; } internal_auxent ;
struct objfile {int obfd; scalar_t__ sym_private; int objfile_obstack; } ;
struct internal_syment {char* n_name; int n_sclass; int n_offset; unsigned int n_numaux; int n_type; scalar_t__ n_zeroes; } ;
struct TYPE_3__ {char* e_name; } ;
struct external_syment {TYPE_1__ e; } ;
struct coff_symfile_info {char* debugsec; char* strtbl; } ;
struct TYPE_4__ {int local_symesz; } ;


 int E_SYMNMLEN ;
 int bfd_coff_swap_aux_in (int ,char*,int ,int,int ,unsigned int,union internal_auxent*) ;
 int bfd_coff_swap_sym_in (int ,char*,struct internal_syment*) ;
 TYPE_2__* coff_data (int ) ;
 char* obstack_alloc (int *,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
swap_sym (struct internal_syment *symbol, union internal_auxent *aux,
   char **name, char **raw, unsigned int *symnump,
   struct objfile *objfile)
{
  bfd_coff_swap_sym_in (objfile->obfd, *raw, symbol);
  if (symbol->n_zeroes)
    {


      if (symbol->n_name[E_SYMNMLEN - 1] != '\0')
 {


   char *p;
   p = obstack_alloc (&objfile->objfile_obstack, E_SYMNMLEN + 1);
   strncpy (p, symbol->n_name, E_SYMNMLEN);
   p[E_SYMNMLEN] = '\0';
   *name = p;
 }
      else


 *name = ((struct external_syment *) *raw)->e.e_name;
    }
  else if (symbol->n_sclass & 0x80)
    {
      *name = ((struct coff_symfile_info *) objfile->sym_private)->debugsec
 + symbol->n_offset;
    }
  else
    {
      *name = ((struct coff_symfile_info *) objfile->sym_private)->strtbl
 + symbol->n_offset;
    }
  ++*symnump;
  *raw += coff_data (objfile->obfd)->local_symesz;
  if (symbol->n_numaux > 0)
    {
      bfd_coff_swap_aux_in (objfile->obfd, *raw, symbol->n_type,
       symbol->n_sclass, 0, symbol->n_numaux, aux);

      *symnump += symbol->n_numaux;
      *raw += coff_data (objfile->obfd)->local_symesz * symbol->n_numaux;
    }
}
