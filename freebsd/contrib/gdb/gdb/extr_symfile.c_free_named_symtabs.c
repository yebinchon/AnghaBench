
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {struct symtab* next; int filename; } ;
struct partial_symtab {int filename; struct partial_symtab* next; } ;
struct blockvector {int dummy; } ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 int BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 int BLOCKVECTOR_NBLOCKS (struct blockvector*) ;
 scalar_t__ BLOCK_NSYMS (int ) ;
 int GLOBAL_BLOCK ;
 int STATIC_BLOCK ;
 int cashier_psymtab (struct partial_symtab*) ;
 int clear_symtab_users_once ;
 int clear_symtab_users_queued ;
 int complaint (int *,char*,char*) ;
 int free_symtab (struct symtab*) ;
 int make_cleanup (int ,int ) ;
 struct partial_symtab* partial_symtab_list ;
 scalar_t__ strcmp (char*,int ) ;
 int symbol_reloading ;
 int symfile_complaints ;
 struct symtab* symtab_list ;

int
free_named_symtabs (char *name)
{
  return (0);

}
