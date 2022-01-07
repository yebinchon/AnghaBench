
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct inotab {int t_size; int t_seekpt; } ;
typedef scalar_t__ ino_t ;
struct TYPE_5__ {int name; scalar_t__ ino; } ;
struct TYPE_4__ {int dd_fd; } ;


 int BUFSIZ ;
 int FAIL ;
 int GOOD ;
 int MIN (int,int) ;
 int Nflag ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 TYPE_3__ curfile ;
 TYPE_1__* dirp ;
 int done (int) ;
 int dup (int ) ;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,...) ;
 struct inotab* inotablookup (scalar_t__) ;
 int open (char*,int,int) ;
 int panic (char*,int ,char*) ;
 int read (int,char*,int) ;
 int rst_seekdir (TYPE_1__*,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int write (int,char*,int) ;

int
genliteraldir(char *name, ino_t ino)
{
 struct inotab *itp;
 int ofile, dp, i, size;
 char buf[BUFSIZ];

 itp = inotablookup(ino);
 if (itp == ((void*)0))
  panic("Cannot find directory inode %ju named %s\n",
      (uintmax_t)ino, name);
 if ((ofile = open(name, O_WRONLY | O_CREAT | O_TRUNC, 0666)) < 0) {
  fprintf(stderr, "%s: ", name);
  (void) fflush(stderr);
  fprintf(stderr, "cannot create file: %s\n", strerror(errno));
  return (FAIL);
 }
 rst_seekdir(dirp, itp->t_seekpt, itp->t_seekpt);
 dp = dup(dirp->dd_fd);
 for (i = itp->t_size; i > 0; i -= BUFSIZ) {
  size = MIN(i, BUFSIZ);
  if (read(dp, buf, (int) size) == -1) {
   fprintf(stderr,
       "write error extracting inode %ju, name %s\n",
       (uintmax_t)curfile.ino, curfile.name);
   fprintf(stderr, "read: %s\n", strerror(errno));
   done(1);
  }
  if (!Nflag && write(ofile, buf, (int) size) == -1) {
   fprintf(stderr,
       "write error extracting inode %ju, name %s\n",
       (uintmax_t)curfile.ino, curfile.name);
   fprintf(stderr, "write: %s\n", strerror(errno));
   done(1);
  }
 }
 (void) close(dp);
 (void) close(ofile);
 return (GOOD);
}
