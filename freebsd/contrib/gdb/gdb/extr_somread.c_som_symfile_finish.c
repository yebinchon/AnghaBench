
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_stab_info; int md; } ;


 int hpread_symfile_finish (struct objfile*) ;
 int xmfree (int ,int *) ;

__attribute__((used)) static void
som_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_stab_info != ((void*)0))
    {
      xmfree (objfile->md, objfile->sym_stab_info);
    }
  hpread_symfile_finish (objfile);
}
