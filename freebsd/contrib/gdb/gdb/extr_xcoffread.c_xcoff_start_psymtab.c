
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symloc {int first_symnum; } ;
struct partial_symtab {char* read_symtab_private; int read_symtab; } ;
struct partial_symbol {int dummy; } ;
struct objfile {int objfile_obstack; int section_offsets; } ;


 int deduce_language_from_filename (char*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int psymtab_language ;
 struct partial_symtab* start_psymtab_common (struct objfile*,int ,char*,int ,struct partial_symbol**,struct partial_symbol**) ;
 int xcoff_psymtab_to_symtab ;

__attribute__((used)) static struct partial_symtab *
xcoff_start_psymtab (struct objfile *objfile, char *filename, int first_symnum,
       struct partial_symbol **global_syms,
       struct partial_symbol **static_syms)
{
  struct partial_symtab *result =
  start_psymtab_common (objfile, objfile->section_offsets,
   filename,

   0,
   global_syms, static_syms);

  result->read_symtab_private = (char *)
    obstack_alloc (&objfile->objfile_obstack, sizeof (struct symloc));
  ((struct symloc *) result->read_symtab_private)->first_symnum = first_symnum;
  result->read_symtab = xcoff_psymtab_to_symtab;


  psymtab_language = deduce_language_from_filename (filename);

  return result;
}
