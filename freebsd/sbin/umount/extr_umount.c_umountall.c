
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvfsconf {int dummy; } ;
struct fstab {int fs_file; int fs_vfstype; int fs_type; } ;


 char* FSTAB_RO ;
 char* FSTAB_RQ ;
 char* FSTAB_RW ;
 scalar_t__ checkname (char*,char**) ;
 scalar_t__ checkvfsname (int ,char**) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int free (char*) ;
 struct fstab* getfsent () ;
 int getvfsbyname (int ,struct xvfsconf*) ;
 char* malloc (size_t) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

int
umountall(char **typelist)
{
 struct xvfsconf vfc;
 struct fstab *fs;
 int rval;
 char *cp;
 static int firstcall = 1;

 if ((fs = getfsent()) != ((void*)0))
  firstcall = 0;
 else if (firstcall)
  errx(1, "fstab reading failure");
 else
  return (0);
 do {

  if (strcmp(fs->fs_file, "/") == 0)
   continue;




  if (strcmp(fs->fs_type, FSTAB_RW) &&
      strcmp(fs->fs_type, FSTAB_RO) &&
      strcmp(fs->fs_type, FSTAB_RQ))
   continue;

  if (getvfsbyname(fs->fs_vfstype, &vfc) == -1)
   continue;
  if (checkvfsname(fs->fs_vfstype, typelist))
   continue;






  if ((cp = malloc((size_t)strlen(fs->fs_file) + 1)) == ((void*)0))
   err(1, "malloc failed");
  (void)strcpy(cp, fs->fs_file);
  rval = umountall(typelist);
  rval = checkname(cp, typelist) || rval;
  free(cp);
  return (rval);
 } while ((fs = getfsent()) != ((void*)0));
 return (0);
}
