
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct partial_symtab {struct symtab* symtab; int (* read_symtab ) (struct partial_symtab*) ;int readin; } ;
struct cleanup {int dummy; } ;


 int currently_reading_symtab ;
 int decrement_reading_symtab ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,int *) ;
 int stub1 (struct partial_symtab*) ;

struct symtab *
psymtab_to_symtab (struct partial_symtab *pst)
{

  if (pst->symtab)
    return pst->symtab;


  if (!pst->readin)
    {
      struct cleanup *back_to = make_cleanup (decrement_reading_symtab, ((void*)0));
      currently_reading_symtab++;
      (*pst->read_symtab) (pst);
      do_cleanups (back_to);
    }

  return pst->symtab;
}
