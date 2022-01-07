
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udf_flags ;
struct iovec {int dummy; } ;


 int EX_OSERR ;
 int EX_USAGE ;
 int MAXPATHLEN ;
 int MNT_RDONLY ;
 int UDFMNT_KICONV ;
 int build_iovec (struct iovec**,int*,char*,...) ;
 scalar_t__ checkpath (char*,char*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int getmntopts (int ,int ,int*,int *) ;
 int getopt (int,char**,char*) ;
 int mopts ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 int optarg ;
 scalar_t__ optind ;
 int rmslashes (char*,char*) ;
 int set_charset (char**,char**,int ) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char mntpath[MAXPATHLEN];
 char fstype[] = "udf";
 struct iovec *iov;
 char *cs_disk, *cs_local, *dev, *dir;
 int ch, iovlen, mntflags, udf_flags, verbose;

 iovlen = mntflags = udf_flags = verbose = 0;
 cs_disk = cs_local = ((void*)0);
 iov = ((void*)0);
 while ((ch = getopt(argc, argv, "o:vC:")) != -1)
  switch (ch) {
  case 'o':
   getmntopts(optarg, mopts, &mntflags, ((void*)0));
   break;
  case 'v':
   verbose++;
   break;
  case 'C':
   if (set_charset(&cs_disk, &cs_local, optarg) == -1)
    err(EX_OSERR, "udf_iconv");
   udf_flags |= UDFMNT_KICONV;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 dev = argv[0];
 dir = argv[1];





 if (checkpath(dir, mntpath) != 0)
  err(EX_USAGE, "%s", mntpath);
 (void)rmslashes(dev, dev);




 mntflags |= MNT_RDONLY;

 build_iovec(&iov, &iovlen, "fstype", fstype, (size_t)-1);
 build_iovec(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
 build_iovec(&iov, &iovlen, "from", dev, (size_t)-1);
 build_iovec(&iov, &iovlen, "flags", &udf_flags, sizeof(udf_flags));
 if (udf_flags & UDFMNT_KICONV) {
  build_iovec(&iov, &iovlen, "cs_disk", cs_disk, (size_t)-1);
  build_iovec(&iov, &iovlen, "cs_local", cs_local, (size_t)-1);
 }
 if (nmount(iov, iovlen, mntflags) < 0)
  err(1, "%s", dev);
 exit(0);
}
