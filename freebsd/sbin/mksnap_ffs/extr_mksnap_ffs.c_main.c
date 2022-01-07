
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntonname; int f_flags; } ;
struct stat {int st_mode; scalar_t__ st_uid; int st_flags; } ;
struct iovec {int dummy; } ;
struct group {int gr_gid; } ;
typedef int errmsg ;


 int EXIT_SUCCESS ;
 int O_RDONLY ;
 int PATH_MAX ;
 int SF_SNAPSHOT ;
 int S_IRGRP ;
 int S_IRUSR ;
 int S_ISTXT ;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 int err (int,char*,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ fchmod (int,int) ;
 scalar_t__ fchown (int,int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 struct group* getgrnam (char*) ;
 scalar_t__ getuid () ;
 int isdir (char*,struct stat*) ;
 int issamefs (char*,struct statfs*) ;
 scalar_t__ nmount (struct iovec*,int,int ) ;
 int open (char*,int ) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strchrnul (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char errmsg[255], path[PATH_MAX];
 char *cp, *snapname;
 struct statfs stfsbuf;
 struct group *grp;
 struct stat stbuf;
 struct iovec *iov;
 int fd, iovlen;

 if (argc == 2)
  snapname = argv[1];
 else if (argc == 3)
  snapname = argv[2];
 else
  usage();
 if (strlen(snapname) >= PATH_MAX)
  errx(1, "pathname too long %s", snapname);
 cp = strrchr(snapname, '/');
 if (cp == ((void*)0)) {
  strlcpy(path, ".", PATH_MAX);
 } else if (cp == snapname) {
  strlcpy(path, "/", PATH_MAX);
 } else {
  strlcpy(path, snapname, cp - snapname + 1);
 }
 if (statfs(path, &stfsbuf) < 0)
  err(1, "%s", path);
 switch (isdir(path, &stbuf)) {
 case -1:
  err(1, "%s", path);
 case 0:
  errx(1, "%s: Not a directory", path);
 default:
  break;
 }
 if (access(path, W_OK) < 0)
  err(1, "Lack write permission in %s", path);
 if ((stbuf.st_mode & S_ISTXT) && stbuf.st_uid != getuid())
  errx(1, "Lack write permission in %s: Sticky bit set", path);






 for (cp = stfsbuf.f_mntonname; issamefs(cp, &stfsbuf) != 1;
     cp = strchrnul(cp + 1, '/')) {
  if (cp[0] == '\0')
   errx(1, "%s: Not a mount point", stfsbuf.f_mntonname);
 }
 if (cp != stfsbuf.f_mntonname)
  strlcpy(stfsbuf.f_mntonname, cp, sizeof(stfsbuf.f_mntonname));





 if ((grp = getgrnam("operator")) == ((void*)0))
  errx(1, "Cannot retrieve operator gid");

 iov = ((void*)0);
 iovlen = 0;
 build_iovec(&iov, &iovlen, "fstype", "ffs", 4);
 build_iovec(&iov, &iovlen, "from", snapname, (size_t)-1);
 build_iovec(&iov, &iovlen, "fspath", stfsbuf.f_mntonname, (size_t)-1);
 build_iovec(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
 build_iovec(&iov, &iovlen, "update", ((void*)0), 0);
 build_iovec(&iov, &iovlen, "snapshot", ((void*)0), 0);

 *errmsg = '\0';
 if (nmount(iov, iovlen, stfsbuf.f_flags) < 0) {
  errmsg[sizeof(errmsg) - 1] = '\0';
  err(1, "Cannot create snapshot %s%s%s", snapname,
      *errmsg != '\0' ? ": " : "", errmsg);
 }
 if ((fd = open(snapname, O_RDONLY)) < 0)
  err(1, "Cannot open %s", snapname);
 if (fstat(fd, &stbuf) != 0)
  err(1, "Cannot stat %s", snapname);
 if ((stbuf.st_flags & SF_SNAPSHOT) == 0)
  errx(1, "File %s is not a snapshot", snapname);
 if (fchown(fd, -1, grp->gr_gid) != 0)
  err(1, "Cannot chown %s", snapname);
 if (fchmod(fd, S_IRUSR | S_IRGRP) != 0)
  err(1, "Cannot chmod %s", snapname);

 exit(EXIT_SUCCESS);
}
