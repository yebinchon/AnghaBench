
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int flags; int md; int sym_private; } ;
struct coff_symfile_info {int dummy; } ;


 int OBJF_REORDERED ;
 int init_entry_point_info (struct objfile*) ;
 int xmmalloc (int ,int) ;

__attribute__((used)) static void
xcoff_symfile_init (struct objfile *objfile)
{

  objfile->sym_private = xmmalloc (objfile->md,
       sizeof (struct coff_symfile_info));




  objfile->flags |= OBJF_REORDERED;

  init_entry_point_info (objfile);
}
