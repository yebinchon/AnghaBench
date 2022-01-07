
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_private; int md; } ;


 scalar_t__ inclDepth ;
 scalar_t__ inclIndx ;
 scalar_t__ inclLength ;
 int * inclTable ;
 int xfree (int *) ;
 int xmfree (int ,int *) ;

__attribute__((used)) static void
xcoff_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_private != ((void*)0))
    {
      xmfree (objfile->md, objfile->sym_private);
    }


  if (inclTable)
    {
      xfree (inclTable);
      inclTable = ((void*)0);
    }
  inclIndx = inclLength = inclDepth = 0;
}
