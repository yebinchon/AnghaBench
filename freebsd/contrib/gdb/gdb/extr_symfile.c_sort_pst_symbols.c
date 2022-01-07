
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct partial_symtab {int n_global_syms; scalar_t__ globals_offset; TYPE_2__* objfile; } ;
struct partial_symbol {int dummy; } ;
struct TYPE_3__ {scalar_t__ list; } ;
struct TYPE_4__ {TYPE_1__ global_psymbols; } ;


 int compare_psymbols ;
 int qsort (scalar_t__,int ,int,int ) ;

void
sort_pst_symbols (struct partial_symtab *pst)
{


  qsort (pst->objfile->global_psymbols.list + pst->globals_offset,
  pst->n_global_syms, sizeof (struct partial_symbol *),
  compare_psymbols);
}
