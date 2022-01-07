
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u_int ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct entry {int e_flags; } ;
typedef int mode_t ;
typedef int gid_t ;
struct TYPE_2__ {char* name; int extsize; scalar_t__ uid; int mode; scalar_t__ rdev; int ino; int file_flags; int gid; int birthtime_nsec; int birthtime_sec; int atime_nsec; int atime_sec; int mtime_nsec; int mtime_sec; int action; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EXTRACT ;
 int FAIL ;
 int GOOD ;





 int IFMT ;


 int Nflag ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SXA_FD ;
 int SXA_FILE ;
 int SXA_LINK ;
 int SYMLINK ;
 int USING ;
 int chflags (char*,int ) ;
 int chmod (char*,int) ;
 int chown (char*,scalar_t__,int ) ;
 int close (int) ;
 TYPE_1__ curfile ;
 int errno ;
 int fchflags (int,int ) ;
 int fchmod (int,int) ;
 int fchown (int,scalar_t__,int ) ;
 int fprintf (int ,char*,char*,...) ;
 int futimens (int,struct timespec*) ;
 int genliteraldir (char*,int ) ;
 int getfile (int ,int ,int ) ;
 scalar_t__ getuid () ;
 int lchflags (char*,int ) ;
 int lchmod (char*,int) ;
 int lchown (char*,scalar_t__,int ) ;
 int linkit (char*,char*,int ) ;
 char* lnkbuf ;
 struct entry* lookupname (char*) ;
 int mflag ;
 int mkfifo (char*,int) ;
 int mknod (char*,int,int) ;
 int ofile ;
 int open (char*,int,int) ;
 int panic (char*,char*) ;
 int pathlen ;
 int set_extattr (int,char*,char*,int,int ) ;
 char* setupextattr (int) ;
 int skipfile () ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int uflag ;
 int unlink (char*) ;
 int utimensat (int ,char*,struct timespec*,int ) ;
 int vprintf (int ,char*,char*) ;
 int xtrattr ;
 int xtrfile ;
 int xtrlnkfile ;
 int xtrlnkskip ;
 int xtrnull ;
 int xtrskip ;

int
extractfile(char *name)
{
 u_int flags;
 uid_t uid;
 gid_t gid;
 mode_t mode;
 int extsize;
 struct timespec mtimep[2], ctimep[2];
 struct entry *ep;
 char *buf;

 curfile.name = name;
 curfile.action = USING;
 mtimep[0].tv_sec = curfile.atime_sec;
 mtimep[0].tv_nsec = curfile.atime_nsec;
 mtimep[1].tv_sec = curfile.mtime_sec;
 mtimep[1].tv_nsec = curfile.mtime_nsec;
 ctimep[0].tv_sec = curfile.atime_sec;
 ctimep[0].tv_nsec = curfile.atime_nsec;
 ctimep[1].tv_sec = curfile.birthtime_sec;
 ctimep[1].tv_nsec = curfile.birthtime_nsec;
 extsize = curfile.extsize;
 uid = getuid();
 if (uid == 0)
  uid = curfile.uid;
 gid = curfile.gid;
 mode = curfile.mode;
 flags = curfile.file_flags;
 switch (mode & IFMT) {

 default:
  fprintf(stderr, "%s: unknown file mode 0%o\n", name, mode);
  skipfile();
  return (FAIL);

 case 128:
  vprintf(stdout, "skipped socket %s\n", name);
  skipfile();
  return (GOOD);

 case 132:
  if (mflag) {
   ep = lookupname(name);
   if (ep == ((void*)0) || ep->e_flags & EXTRACT)
    panic("unextracted directory %s\n", name);
   skipfile();
   return (GOOD);
  }
  vprintf(stdout, "extract file %s\n", name);
  return (genliteraldir(name, curfile.ino));

 case 130:
  lnkbuf[0] = '\0';
  pathlen = 0;
  buf = setupextattr(extsize);
  getfile(xtrlnkfile, xtrattr, xtrlnkskip);
  if (pathlen == 0) {
   vprintf(stdout,
       "%s: zero length symbolic link (ignored)\n", name);
   return (GOOD);
  }
  if (linkit(lnkbuf, name, SYMLINK) == GOOD) {
   if (extsize > 0)
    set_extattr(-1, name, buf, extsize, SXA_LINK);
   (void) lchown(name, uid, gid);
   (void) lchmod(name, mode);
   (void) utimensat(AT_FDCWD, name, ctimep,
       AT_SYMLINK_NOFOLLOW);
   (void) utimensat(AT_FDCWD, name, mtimep,
       AT_SYMLINK_NOFOLLOW);
   (void) lchflags(name, flags);
   return (GOOD);
  }
  return (FAIL);

 case 131:
  vprintf(stdout, "extract fifo %s\n", name);
  if (Nflag) {
   skipfile();
   return (GOOD);
  }
  if (uflag)
   (void) unlink(name);
  if (mkfifo(name, 0600) < 0) {
   fprintf(stderr, "%s: cannot create fifo: %s\n",
       name, strerror(errno));
   skipfile();
   return (FAIL);
  }
  if (extsize == 0) {
   skipfile();
  } else {
   buf = setupextattr(extsize);
   getfile(xtrnull, xtrattr, xtrnull);
   set_extattr(-1, name, buf, extsize, SXA_FILE);
  }
  (void) chown(name, uid, gid);
  (void) chmod(name, mode);
  (void) utimensat(AT_FDCWD, name, ctimep, 0);
  (void) utimensat(AT_FDCWD, name, mtimep, 0);
  (void) chflags(name, flags);
  return (GOOD);

 case 133:
 case 134:
  vprintf(stdout, "extract special file %s\n", name);
  if (Nflag) {
   skipfile();
   return (GOOD);
  }
  if (uflag)
   (void) unlink(name);
  if (mknod(name, (mode & (133 | 134)) | 0600,
      (int)curfile.rdev) < 0) {
   fprintf(stderr, "%s: cannot create special file: %s\n",
       name, strerror(errno));
   skipfile();
   return (FAIL);
  }
  if (extsize == 0) {
   skipfile();
  } else {
   buf = setupextattr(extsize);
   getfile(xtrnull, xtrattr, xtrnull);
   set_extattr(-1, name, buf, extsize, SXA_FILE);
  }
  (void) chown(name, uid, gid);
  (void) chmod(name, mode);
  (void) utimensat(AT_FDCWD, name, ctimep, 0);
  (void) utimensat(AT_FDCWD, name, mtimep, 0);
  (void) chflags(name, flags);
  return (GOOD);

 case 129:
  vprintf(stdout, "extract file %s\n", name);
  if (Nflag) {
   skipfile();
   return (GOOD);
  }
  if (uflag)
   (void) unlink(name);
  if ((ofile = open(name, O_WRONLY | O_CREAT | O_TRUNC,
      0600)) < 0) {
   fprintf(stderr, "%s: cannot create file: %s\n",
       name, strerror(errno));
   skipfile();
   return (FAIL);
  }
  buf = setupextattr(extsize);
  getfile(xtrfile, xtrattr, xtrskip);
  if (extsize > 0)
   set_extattr(ofile, name, buf, extsize, SXA_FD);
  (void) fchown(ofile, uid, gid);
  (void) fchmod(ofile, mode);
  (void) futimens(ofile, ctimep);
  (void) futimens(ofile, mtimep);
  (void) fchflags(ofile, flags);
  (void) close(ofile);
  return (GOOD);
 }

}
