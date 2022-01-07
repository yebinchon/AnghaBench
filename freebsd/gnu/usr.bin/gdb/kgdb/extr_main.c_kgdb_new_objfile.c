
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int kgdb_new_objfile_chain (struct objfile*) ;
 int kgdb_trgt_new_objfile (struct objfile*) ;
 int kld_new_objfile (struct objfile*) ;
 int push_remote_target (int *,int ) ;
 int * remote ;
 struct objfile* symfile_objfile ;

__attribute__((used)) static void
kgdb_new_objfile(struct objfile *objfile)
{
 static int once = 1;

 kld_new_objfile(objfile);
 kgdb_trgt_new_objfile(objfile);

 if (kgdb_new_objfile_chain != ((void*)0))
  kgdb_new_objfile_chain(objfile);

 if (once && objfile != ((void*)0) && objfile == symfile_objfile) {




  once = 0;
  if (remote != ((void*)0))
   push_remote_target (remote, 0);
 }
}
