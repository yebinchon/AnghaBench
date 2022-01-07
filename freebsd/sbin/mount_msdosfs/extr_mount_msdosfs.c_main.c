
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uid_t ;
struct stat {size_t st_uid; size_t st_gid; size_t st_mode; } ;
struct iovec {int dummy; } ;
typedef size_t mode_t ;
typedef size_t gid_t ;
typedef int errmsg ;


 int EX_CONFIG ;
 int EX_NOINPUT ;
 int EX_OSERR ;
 int EX_USAGE ;
 int KICONV_VENDOR_MICSFT ;
 int LC_CTYPE ;
 int MAXPATHLEN ;
 size_t S_IRWXG ;
 size_t S_IRWXO ;
 size_t S_IRWXU ;
 size_t a_gid (char*) ;
 size_t a_mask (char*) ;
 size_t a_uid (char*) ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 int build_iovec_argf (struct iovec**,int*,char*,char const*,...) ;
 scalar_t__ checkpath (char*,char*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 char* kiconv_quirkcs (char*,int ) ;
 scalar_t__ nmount (struct iovec*,int,int ) ;
 char* optarg ;
 int optind ;
 int rmslashes (char*,char*) ;
 int set_charset (struct iovec**,int*,char*,char*) ;
 int * setlocale (int ,char*) ;
 int stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 struct iovec *iov = ((void*)0);
 int iovlen = 0;
 struct stat sb;
 int c, set_gid, set_uid, set_mask, set_dirmask;
 char *dev, *dir, mntpath[MAXPATHLEN], *csp;
 char fstype[] = "msdosfs";
 char errmsg[255] = {0};
 char *cs_dos = ((void*)0);
 char *cs_local = ((void*)0);
 mode_t mask = 0, dirmask = 0;
 uid_t uid = 0;
 gid_t gid = 0;

 set_gid = set_uid = set_mask = set_dirmask = 0;

 while ((c = getopt(argc, argv, "sl9u:g:m:M:o:L:D:W:")) != -1) {
  switch (c) {
  case 's':
   build_iovec(&iov, &iovlen, "shortnames", ((void*)0), (size_t)-1);
   break;
  case 'l':
   build_iovec(&iov, &iovlen, "longnames", ((void*)0), (size_t)-1);
   break;
  case '9':
   build_iovec_argf(&iov, &iovlen, "nowin95", "", (size_t)-1);
   break;
  case 'u':
   uid = a_uid(optarg);
   set_uid = 1;
   break;
  case 'g':
   gid = a_gid(optarg);
   set_gid = 1;
   break;
  case 'm':
   mask = a_mask(optarg);
   set_mask = 1;
   break;
  case 'M':
   dirmask = a_mask(optarg);
   set_dirmask = 1;
   break;
  case 'L': {
   const char *quirk = ((void*)0);
   if (setlocale(LC_CTYPE, optarg) == ((void*)0))
    err(EX_CONFIG, "%s", optarg);
   csp = strchr(optarg,'.');
   if (!csp)
    err(EX_CONFIG, "%s", optarg);
   quirk = kiconv_quirkcs(csp + 1, KICONV_VENDOR_MICSFT);
   build_iovec_argf(&iov, &iovlen, "cs_local", quirk);
   cs_local = strdup(quirk);
   }
   break;
  case 'D':
   cs_dos = strdup(optarg);
   build_iovec_argf(&iov, &iovlen, "cs_dos", cs_dos, (size_t)-1);
   break;
  case 'o': {
   char *p = ((void*)0);
   char *val = strdup("");
   p = strchr(optarg, '=');
   if (p != ((void*)0)) {
    free(val);
    *p = '\0';
    val = p + 1;
   }
   build_iovec(&iov, &iovlen, optarg, val, (size_t)-1);
   }
   break;
  case 'W':
   if (strcmp(optarg, "iso22dos") == 0) {
    cs_local = strdup("ISO8859-2");
    cs_dos = strdup("CP852");
   } else if (strcmp(optarg, "iso72dos") == 0) {
    cs_local = strdup("ISO8859-7");
    cs_dos = strdup("CP737");
   } else if (strcmp(optarg, "koi2dos") == 0) {
    cs_local = strdup("KOI8-R");
    cs_dos = strdup("CP866");
   } else if (strcmp(optarg, "koi8u2dos") == 0) {
    cs_local = strdup("KOI8-U");
    cs_dos = strdup("CP866");
   } else {
    err(EX_NOINPUT, "%s", optarg);
   }
   build_iovec(&iov, &iovlen, "cs_local", cs_local, (size_t)-1);
   build_iovec(&iov, &iovlen, "cs_dos", cs_dos, (size_t)-1);
   break;
  case '?':
  default:
   usage();
   break;
  }
 }

 if (optind + 2 != argc)
  usage();

 if (set_mask && !set_dirmask) {
  dirmask = mask;
  set_dirmask = 1;
 }
 else if (set_dirmask && !set_mask) {
  mask = dirmask;
  set_mask = 1;
 }

 dev = argv[optind];
 dir = argv[optind + 1];

 if (cs_local != ((void*)0)) {
  if (set_charset(&iov, &iovlen, cs_local, cs_dos) == -1)
   err(EX_OSERR, "msdosfs_iconv");
  build_iovec_argf(&iov, &iovlen, "kiconv", "");
 } else if (cs_dos != ((void*)0)) {
  build_iovec_argf(&iov, &iovlen, "cs_local", "ISO8859-1");
  if (set_charset(&iov, &iovlen, "ISO8859-1", cs_dos) == -1)
   err(EX_OSERR, "msdosfs_iconv");
  build_iovec_argf(&iov, &iovlen, "kiconv", "");
 }





 if (checkpath(dir, mntpath) != 0)
  err(EX_USAGE, "%s", mntpath);
 (void)rmslashes(dev, dev);

 if (!set_gid || !set_uid || !set_mask) {
  if (stat(mntpath, &sb) == -1)
   err(EX_OSERR, "stat %s", mntpath);

  if (!set_uid)
   uid = sb.st_uid;
  if (!set_gid)
   gid = sb.st_gid;
  if (!set_mask)
   mask = dirmask =
    sb.st_mode & (S_IRWXU | S_IRWXG | S_IRWXO);
 }

 build_iovec(&iov, &iovlen, "fstype", fstype, (size_t)-1);
 build_iovec(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
 build_iovec(&iov, &iovlen, "from", dev, (size_t)-1);
 build_iovec(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
 build_iovec_argf(&iov, &iovlen, "uid", "%d", uid);
 build_iovec_argf(&iov, &iovlen, "gid", "%u", gid);
 build_iovec_argf(&iov, &iovlen, "mask", "%u", mask);
 build_iovec_argf(&iov, &iovlen, "dirmask", "%u", dirmask);

 if (nmount(iov, iovlen, 0) < 0) {
  if (errmsg[0])
   err(1, "%s: %s", dev, errmsg);
  else
   err(1, "%s", dev);
 }

 exit (0);
}
