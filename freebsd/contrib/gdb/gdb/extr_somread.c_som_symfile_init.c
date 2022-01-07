
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int flags; } ;


 int OBJF_REORDERED ;
 int hpread_symfile_init (struct objfile*) ;

__attribute__((used)) static void
som_symfile_init (struct objfile *objfile)
{



  objfile->flags |= OBJF_REORDERED;
  hpread_symfile_init (objfile);
}
