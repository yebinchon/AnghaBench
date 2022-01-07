
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int breakpoint_re_set () ;
 int clear_complaints (int *,int ,int) ;
 int clear_symtab_users () ;
 int symfile_complaints ;
 struct objfile* symfile_objfile ;

void
new_symfile_objfile (struct objfile *objfile, int mainline, int verbo)
{




  if (mainline)
    {

      symfile_objfile = objfile;

      clear_symtab_users ();
    }
  else
    {
      breakpoint_re_set ();
    }


  clear_complaints (&symfile_complaints, 0, verbo);
}
