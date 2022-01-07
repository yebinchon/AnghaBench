
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct vmap {struct objfile* objfile; int bfd; } ;
struct objfile {int dummy; } ;
struct TYPE_11__ {int filename; } ;
typedef TYPE_1__ bfd ;
typedef int LdInfo ;


 int ARCH64_DECL (int ) ;
 scalar_t__ DEPRECATED_STREQ (char*,int ) ;
 int LDI_FD (int *,int ) ;
 char* LDI_FILENAME (int *,int ) ;
 struct objfile* allocate_objfile (int ,int ) ;
 int arch64 ;
 scalar_t__ auto_solib_add ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (TYPE_1__*,int ) ;
 int bfd_close (TYPE_1__*) ;
 char* bfd_errmsg (int ) ;
 TYPE_1__* bfd_fdopenr (char*,int ,int) ;
 int bfd_get_error () ;
 int bfd_object ;
 TYPE_1__* bfd_openr (char*,int ) ;
 TYPE_1__* bfd_openr_next_archived_file (TYPE_1__*,TYPE_1__*) ;
 int gnutarget ;
 struct vmap* map_vmap (TYPE_1__*,TYPE_1__*) ;
 char* savestring (char*,int) ;
 int strlen (char*) ;
 struct vmap* vmap ;
 int vmap_add_symbols (struct vmap*) ;
 int warning (char*,char*,char*,...) ;

__attribute__((used)) static struct vmap *
add_vmap (LdInfo *ldi)
{
  bfd *abfd, *last;
  char *mem, *objname, *filename;
  struct objfile *obj;
  struct vmap *vp;
  int fd;
  ARCH64_DECL (arch64);





  filename = LDI_FILENAME (ldi, arch64);
  mem = filename + strlen (filename) + 1;
  mem = savestring (mem, strlen (mem));
  objname = savestring (filename, strlen (filename));

  fd = LDI_FD (ldi, arch64);
  if (fd < 0)


    abfd = bfd_openr (objname, gnutarget);
  else
    abfd = bfd_fdopenr (objname, gnutarget, fd);
  if (!abfd)
    {
      warning ("Could not open `%s' as an executable file: %s",
        objname, bfd_errmsg (bfd_get_error ()));
      return ((void*)0);
    }



  if (bfd_check_format (abfd, bfd_object))
    vp = map_vmap (abfd, 0);

  else if (bfd_check_format (abfd, bfd_archive))
    {
      last = 0;

      while ((last = bfd_openr_next_archived_file (abfd, last)))
 if (DEPRECATED_STREQ (mem, last->filename))
   break;

      if (!last)
 {
   warning ("\"%s\": member \"%s\" missing.", objname, mem);
   bfd_close (abfd);
   return ((void*)0);
 }

      if (!bfd_check_format (last, bfd_object))
 {
   warning ("\"%s\": member \"%s\" not in executable format: %s.",
     objname, mem, bfd_errmsg (bfd_get_error ()));
   bfd_close (last);
   bfd_close (abfd);
   return ((void*)0);
 }

      vp = map_vmap (last, abfd);
    }
  else
    {
      warning ("\"%s\": not in executable format: %s.",
        objname, bfd_errmsg (bfd_get_error ()));
      bfd_close (abfd);
      return ((void*)0);
    }
  obj = allocate_objfile (vp->bfd, 0);
  vp->objfile = obj;


  if (vp == vmap || auto_solib_add)
    vmap_add_symbols (vp);
  return vp;
}
