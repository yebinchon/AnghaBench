
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int fstype ;
typedef int errmsg ;


 int MAXPATHLEN ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 scalar_t__ checkpath (char*,char*) ;
 int getmnt_silent ;
 int getmntopts (char*,int ,int*,int ) ;
 int getopt (int,char**,char*) ;
 int memset (char*,int ,int) ;
 int mopts ;
 int nmount (struct iovec*,int,int) ;
 char* optarg ;
 int optind ;
 int optreset ;
 int rmslashes (char*,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int usage () ;
 int warn (char*,char*,...) ;

int
mount_fs(const char *vfstype, int argc, char *argv[])
{
 struct iovec *iov;
 int iovlen;
 int mntflags = 0;
 int ch;
 char *dev, *dir, mntpath[MAXPATHLEN];
 char fstype[32];
 char errmsg[255];
 char *p, *val;

 strlcpy(fstype, vfstype, sizeof(fstype));
 memset(errmsg, 0, sizeof(errmsg));

 getmnt_silent = 1;
 iov = ((void*)0);
 iovlen = 0;

 optind = optreset = 1;
 while ((ch = getopt(argc, argv, "o:")) != -1) {
  switch(ch) {
  case 'o':
   getmntopts(optarg, mopts, &mntflags, 0);
   p = strchr(optarg, '=');
   val = ((void*)0);
   if (p != ((void*)0)) {
    *p = '\0';
    val = p + 1;
   }
   build_iovec(&iov, &iovlen, optarg, val, (size_t)-1);
   break;
  case '?':
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;
 if (argc != 2)
  usage();

 dev = argv[0];
 dir = argv[1];

 if (checkpath(dir, mntpath) != 0) {
  warn("%s", mntpath);
  return (1);
 }
 (void)rmslashes(dev, dev);

 build_iovec(&iov, &iovlen, "fstype", fstype, (size_t)-1);
 build_iovec(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
 build_iovec(&iov, &iovlen, "from", dev, (size_t)-1);
 build_iovec(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));

 if (nmount(iov, iovlen, mntflags) == -1) {
  if (*errmsg != '\0')
   warn("%s: %s", dev, errmsg);
  else
   warn("%s", dev);
  return (1);
 }
 return (0);
}
