
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symloc {scalar_t__ numsyms; scalar_t__ first_symnum; scalar_t__ lineno_off; } ;
struct partial_symtab {char* read_symtab_private; scalar_t__ n_global_syms; scalar_t__ globals_offset; scalar_t__ n_static_syms; scalar_t__ statics_offset; int number_of_dependencies; int filename; int read_symtab; scalar_t__ symtab; scalar_t__ readin; struct partial_symtab** dependencies; scalar_t__ texthigh; scalar_t__ textlow; int section_offsets; struct objfile* objfile; } ;
struct TYPE_4__ {scalar_t__ next; scalar_t__ list; } ;
struct TYPE_3__ {scalar_t__ next; scalar_t__ list; } ;
struct objfile {int objfile_obstack; TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;


 struct partial_symtab* allocate_psymtab (char*,struct objfile*) ;
 int discard_psymtab (struct partial_symtab*) ;
 scalar_t__ first_fun_line_offset ;
 int free_named_symtabs (int ) ;
 int memcpy (struct partial_symtab**,struct partial_symtab**,int) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int sort_pst_symbols (struct partial_symtab*) ;

__attribute__((used)) static struct partial_symtab *
xcoff_end_psymtab (struct partial_symtab *pst, char **include_list,
     int num_includes, int capping_symbol_number,
     struct partial_symtab **dependency_list,
     int number_dependencies, int textlow_not_set)
{
  int i;
  struct objfile *objfile = pst->objfile;

  if (capping_symbol_number != -1)
    ((struct symloc *) pst->read_symtab_private)->numsyms =
      capping_symbol_number
      - ((struct symloc *) pst->read_symtab_private)->first_symnum;
  ((struct symloc *) pst->read_symtab_private)->lineno_off =
    first_fun_line_offset;
  first_fun_line_offset = 0;
  pst->n_global_syms =
    objfile->global_psymbols.next - (objfile->global_psymbols.list + pst->globals_offset);
  pst->n_static_syms =
    objfile->static_psymbols.next - (objfile->static_psymbols.list + pst->statics_offset);

  pst->number_of_dependencies = number_dependencies;
  if (number_dependencies)
    {
      pst->dependencies = (struct partial_symtab **)
 obstack_alloc (&objfile->objfile_obstack,
      number_dependencies * sizeof (struct partial_symtab *));
      memcpy (pst->dependencies, dependency_list,
       number_dependencies * sizeof (struct partial_symtab *));
    }
  else
    pst->dependencies = 0;

  for (i = 0; i < num_includes; i++)
    {
      struct partial_symtab *subpst =
      allocate_psymtab (include_list[i], objfile);

      subpst->section_offsets = pst->section_offsets;
      subpst->read_symtab_private =
 (char *) obstack_alloc (&objfile->objfile_obstack,
    sizeof (struct symloc));
      ((struct symloc *) subpst->read_symtab_private)->first_symnum = 0;
      ((struct symloc *) subpst->read_symtab_private)->numsyms = 0;
      subpst->textlow = 0;
      subpst->texthigh = 0;



      subpst->dependencies = (struct partial_symtab **)
 obstack_alloc (&objfile->objfile_obstack,
         sizeof (struct partial_symtab *));
      subpst->dependencies[0] = pst;
      subpst->number_of_dependencies = 1;

      subpst->globals_offset =
 subpst->n_global_syms =
 subpst->statics_offset =
 subpst->n_static_syms = 0;

      subpst->readin = 0;
      subpst->symtab = 0;
      subpst->read_symtab = pst->read_symtab;
    }

  sort_pst_symbols (pst);




  free_named_symtabs (pst->filename);

  if (num_includes == 0
      && number_dependencies == 0
      && pst->n_global_syms == 0
      && pst->n_static_syms == 0)
    {





      discard_psymtab (pst);


      pst = (struct partial_symtab *) ((void*)0);
    }
  return pst;
}
