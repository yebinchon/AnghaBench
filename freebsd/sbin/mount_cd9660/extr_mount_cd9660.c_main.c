
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int EX_OSERR ;
 int MAXPATHLEN ;
 int MNT_RDONLY ;
 int atoi (char*) ;
 int build_iovec (struct iovec**,int*,char*,char*,size_t) ;
 int build_iovec_argf (struct iovec**,int*,char*,char*,int) ;
 scalar_t__ checkpath (char*,char*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int get_ssector (char*) ;
 int getmntopts (char*,int ,int*,int *) ;
 int getopt (int,char**,char*) ;
 int mopts ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int rmslashes (char*,char*) ;
 int set_charset (struct iovec**,int*,char*) ;
 char* strchr (char*,char) ;
 int usage () ;

int
main(int argc, char **argv)
{
 struct iovec *iov;
 int iovlen;
 int ch, mntflags;
 char *dev, *dir, *p, *val, mntpath[MAXPATHLEN];
 int verbose;
 int ssector;
 char fstype[] = "cd9660";

 iov = ((void*)0);
 iovlen = 0;
 mntflags = verbose = 0;
 ssector = -1;

 while ((ch = getopt(argc, argv, "begjo:rs:vC:")) != -1)
  switch (ch) {
  case 'b':
   build_iovec(&iov, &iovlen, "brokenjoliet", ((void*)0), (size_t)-1);
   break;
  case 'e':
   build_iovec(&iov, &iovlen, "extatt", ((void*)0), (size_t)-1);
   break;
  case 'g':
   build_iovec(&iov, &iovlen, "gens", ((void*)0), (size_t)-1);
   break;
  case 'j':
   build_iovec(&iov, &iovlen, "nojoliet", ((void*)0), (size_t)-1);
   break;
  case 'o':
   getmntopts(optarg, mopts, &mntflags, ((void*)0));
   p = strchr(optarg, '=');
   val = ((void*)0);
   if (p != ((void*)0)) {
    *p = '\0';
    val = p + 1;
   }
   build_iovec(&iov, &iovlen, optarg, val, (size_t)-1);
   break;
  case 'r':
   build_iovec(&iov, &iovlen, "norrip", ((void*)0), (size_t)-1);
   break;
  case 's':
   ssector = atoi(optarg);
   break;
  case 'v':
   verbose++;
   break;
  case 'C':
   if (set_charset(&iov, &iovlen, optarg) == -1)
    err(EX_OSERR, "cd9660_iconv");
   build_iovec(&iov, &iovlen, "kiconv", ((void*)0), (size_t)-1);
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
  err(1, "%s", mntpath);
 (void)rmslashes(dev, dev);

 if (ssector == -1) {
  if ((ssector = get_ssector(dev)) == -1) {
   if (verbose)
    printf("could not determine starting sector, "
           "using very first session\n");
   ssector = 0;
  } else if (verbose)
   printf("using starting sector %d\n", ssector);
 }
 mntflags |= MNT_RDONLY;
 build_iovec(&iov, &iovlen, "fstype", fstype, (size_t)-1);
 build_iovec(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
 build_iovec(&iov, &iovlen, "from", dev, (size_t)-1);
 build_iovec_argf(&iov, &iovlen, "ssector", "%d", ssector);

 if (nmount(iov, iovlen, mntflags) < 0)
  err(1, "%s", dev);
 exit(0);
}
