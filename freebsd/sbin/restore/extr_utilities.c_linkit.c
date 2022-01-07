
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_flags; } ;


 int FAIL ;
 int GOOD ;
 int HARDLINK ;
 int Nflag ;
 int SYMLINK ;
 int chflags (char*,scalar_t__) ;
 int errno ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int link (char*,char*) ;
 int panic (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 scalar_t__ symlink (char*,char*) ;
 scalar_t__ uflag ;
 int unlink (char*) ;
 int vprintf (int ,char*,char*,char*,char*) ;

int
linkit(char *existing, char *new, int type)
{


 if (uflag && !Nflag)
  (void)unlink(new);

 if (type == SYMLINK) {
  if (!Nflag && symlink(existing, new) < 0) {
   fprintf(stderr,
       "warning: cannot create symbolic link %s->%s: %s\n",
       new, existing, strerror(errno));
   return (FAIL);
  }
 } else if (type == HARDLINK) {
  int ret;

  if (!Nflag && (ret = link(existing, new)) < 0) {
   struct stat s;





   if (stat(existing, &s) == 0 && s.st_flags != 0 &&
       chflags(existing, 0) == 0) {
    ret = link(existing, new);
    chflags(existing, s.st_flags);
   }
   if (ret < 0) {
    fprintf(stderr, "warning: cannot create "
        "hard link %s->%s: %s\n",
        new, existing, strerror(errno));
    return (FAIL);
   }
  }
 } else {
  panic("linkit: unknown type %d\n", type);
  return (FAIL);
 }
 vprintf(stdout, "Create %s link %s->%s\n",
  type == SYMLINK ? "symbolic" : "hard", new, existing);
 return (GOOD);
}
