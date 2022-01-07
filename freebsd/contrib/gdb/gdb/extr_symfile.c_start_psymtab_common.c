
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct section_offsets {int dummy; } ;
struct partial_symtab {struct partial_symbol** statics_offset; struct partial_symbol** globals_offset; int textlow; int texthigh; struct section_offsets* section_offsets; } ;
struct partial_symbol {int dummy; } ;
struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int list; } ;
struct objfile {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;
typedef int CORE_ADDR ;


 struct partial_symtab* allocate_psymtab (char*,struct objfile*) ;

struct partial_symtab *
start_psymtab_common (struct objfile *objfile,
        struct section_offsets *section_offsets, char *filename,
        CORE_ADDR textlow, struct partial_symbol **global_syms,
        struct partial_symbol **static_syms)
{
  struct partial_symtab *psymtab;

  psymtab = allocate_psymtab (filename, objfile);
  psymtab->section_offsets = section_offsets;
  psymtab->textlow = textlow;
  psymtab->texthigh = psymtab->textlow;
  psymtab->globals_offset = global_syms - objfile->global_psymbols.list;
  psymtab->statics_offset = static_syms - objfile->static_psymbols.list;
  return (psymtab);
}
