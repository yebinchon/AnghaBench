
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct vmap {struct objfile* objfile; int member; int name; struct vmap* nxt; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct objfile {char* name; int * obfd; } ;
typedef int LdInfo ;


 int ARCH64 () ;
 int DEPRECATED_STREQ (char*,int ) ;
 int LDI_FD (int *,int) ;
 char* LDI_FILENAME (int *,int) ;
 int LDI_NEXT (int *,int) ;
 int add_vmap (int *) ;
 scalar_t__ bfd_stat (int *,struct stat*) ;
 int breakpoint_re_set () ;
 int close (int) ;
 int free_objfile (struct objfile*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int strlen (char*) ;
 struct objfile* symfile_objfile ;
 int target_new_objfile_hook (struct objfile*) ;
 struct vmap* vmap ;
 int vmap_secs (struct vmap*,int *,int) ;
 int vmap_symtab (struct vmap*) ;
 int warning (char*,char*,...) ;

__attribute__((used)) static void
vmap_ldinfo (LdInfo *ldi)
{
  struct stat ii, vi;
  struct vmap *vp;
  int got_one, retried;
  int got_exec_file = 0;
  uint next;
  int arch64 = ARCH64 ();





  do
    {
      char *name = LDI_FILENAME (ldi, arch64);
      char *memb = name + strlen (name) + 1;
      int fd = LDI_FD (ldi, arch64);

      retried = 0;

      if (fstat (fd, &ii) < 0)
 {



   warning ("%s (fd=%d) has disappeared, keeping its symbols",
     name, fd);
   continue;
 }
    retry:
      for (got_one = 0, vp = vmap; vp; vp = vp->nxt)
 {
   struct objfile *objfile;
   if ((name[0] == '/' && !DEPRECATED_STREQ (name, vp->name))
       || (memb[0] && !DEPRECATED_STREQ (memb, vp->member)))
     continue;




   objfile = vp->objfile == ((void*)0) ? symfile_objfile : vp->objfile;
   if (objfile == ((void*)0)
       || objfile->obfd == ((void*)0)
       || bfd_stat (objfile->obfd, &vi) < 0)
     {
       warning ("Unable to stat %s, keeping its symbols", name);
       continue;
     }

   if (ii.st_dev != vi.st_dev || ii.st_ino != vi.st_ino)
     continue;

   if (!retried)
     close (fd);

   ++got_one;



   vmap_secs (vp, ldi, arch64);


   if (vp->objfile == ((void*)0))
     got_exec_file = 1;


   vmap_symtab (vp);



   if (target_new_objfile_hook && vp->objfile)
     target_new_objfile_hook (vp->objfile);


 }


      if (!got_one && !retried)
 {
   add_vmap (ldi);
   ++retried;
   goto retry;
 }
    }
  while ((next = LDI_NEXT (ldi, arch64))
  && (ldi = (void *) (next + (char *) ldi)));





  if (symfile_objfile != ((void*)0) && !got_exec_file)
    {
      warning ("Symbol file %s\nis not mapped; discarding it.\nIf in fact that file has symbols which the mapped files listed by\n\"info files\" lack, you can load symbols with the \"symbol-file\" or\n\"add-symbol-file\" commands (note that you must take care of relocating\nsymbols to the proper address).",




        symfile_objfile->name);
      free_objfile (symfile_objfile);
      symfile_objfile = ((void*)0);
    }
  breakpoint_re_set ();
}
