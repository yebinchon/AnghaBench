
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_pathobj {char* po_path; int po_len; } ;
struct puffs_ops {int dummy; } ;
struct dtfs_fid {int dummy; } ;
typedef int * mntoptparse_t ;
struct TYPE_3__ {int dtm_allowprot; } ;


 char* FSNAME ;
 int MAXREQMAGIC ;
 int PUFFSOP_INIT (struct puffs_ops*) ;
 int PUFFSOP_SET (struct puffs_ops*,int ,int ,int ) ;
 int PUFFSOP_SETFSNOP (struct puffs_ops*,int ) ;
 int PUFFS_FHFLAG_DYNAMIC ;
 int PUFFS_FHFLAG_NFSV2 ;
 int PUFFS_FHFLAG_NFSV3 ;
 int PUFFS_FLAG_BUILDPATH ;
 int PUFFS_FLAG_OPDUMP ;
 int PUFFS_KFLAG_IAONDEMAND ;
 int PUFFS_KFLAG_LOOKUP_FULLPNBUF ;
 int PUFFS_KFLAG_WTCACHE ;
 int SIGALRM ;
 scalar_t__ SIG_ERR ;
 int VM_PROT_ALL ;
 int _PATH_PUFFS ;
 int access ;
 void* atoi (char*) ;
 int create ;
 int dtfs ;
 scalar_t__ dtfs_domount (struct puffs_usermount*,char*) ;
 int dynamicfh ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fhtonode ;
 int freemntopts (int *) ;
 int fs ;
 TYPE_1__ gdtm ;
 int getattr ;
 int * getmntopts (char*,int ,int*,int*) ;
 int getopt (int,char**,char*) ;
 struct puffs_usermount* gpu ;
 int inactive ;
 int link ;
 int lookup ;
 int loopfun ;
 int mkdir ;
 int mknod ;
 int mmap ;
 int node ;
 int nodetofh ;
 int pathconf ;
 int poll ;
 int puffs_daemon (struct puffs_usermount*,int,int) ;
 int puffs_genfs ;
 int puffs_getroot (struct puffs_usermount*) ;
 struct puffs_pathobj* puffs_getrootpathobj (struct puffs_usermount*) ;
 struct puffs_usermount* puffs_init (struct puffs_ops*,int ,char const*,TYPE_1__*,int) ;
 int puffs_kernerr_abort ;
 int puffs_mainloop (struct puffs_usermount*) ;
 int puffs_ml_setloopfn (struct puffs_usermount*,int ) ;
 int puffs_ml_settimeout (struct puffs_usermount*,struct timespec*) ;
 int puffs_mount (struct puffs_usermount*,char*,int,int ) ;
 int puffs_set_errnotify (struct puffs_usermount*,int ) ;
 int puffs_setfhsize (struct puffs_usermount*,int,int) ;
 int puffs_setmaxreqlen (struct puffs_usermount*,int) ;
 int puffs_setncookiehash (struct puffs_usermount*,int) ;
 int puffsmopts ;
 int read ;
 int readdir ;
 int readlink ;
 int reclaim ;
 int remove ;
 int rename ;
 int rmdir ;
 int setattr ;
 int setprogname (char*) ;
 scalar_t__ signal (int ,int ) ;
 int srandom (int ) ;
 int statvfs ;
 int straightflush ;
 int strlen (char*) ;
 int symlink ;
 int sync ;
 int time (int *) ;
 int unmount ;
 int usage () ;
 int warn (char*) ;
 int wipe_the_sleep_out_of_my_eyes ;
 int write ;

int
main(int argc, char *argv[])
{
 extern char *optarg;
 extern int optind;
 struct puffs_usermount *pu;
 struct puffs_pathobj *po_root;
 struct puffs_ops *pops;
 struct timespec ts;
 const char *typename;
 char *rtstr;
 mntoptparse_t mp;
 int pflags, detach, mntflags;
 int ch;
 int khashbuckets;
 int maxreqsize;

 setprogname(argv[0]);

 rtstr = ((void*)0);
 detach = 1;
 mntflags = 0;
 khashbuckets = 256;
 pflags = PUFFS_KFLAG_IAONDEMAND;
 typename = FSNAME;
 maxreqsize = MAXREQMAGIC;
 gdtm.dtm_allowprot = VM_PROT_ALL;
 while ((ch = getopt(argc, argv, "bc:dfilm:n:o:p:r:st")) != -1) {
  switch (ch) {
  case 'b':
   pflags |= PUFFS_FLAG_BUILDPATH;
   break;
  case 'c':
   khashbuckets = atoi(optarg);
   break;
  case 'd':
   dynamicfh = 1;
   break;
  case 'f':
   pflags |= PUFFS_KFLAG_LOOKUP_FULLPNBUF;
   break;
  case 'i':
   pflags &= ~PUFFS_KFLAG_IAONDEMAND;
   break;
  case 'l':
   straightflush = 1;
   break;
  case 'm':
   maxreqsize = atoi(optarg);
   break;
  case 'n':
   typename = optarg;
   break;
  case 'o':
   mp = getmntopts(optarg, puffsmopts, &mntflags, &pflags);
   if (mp == ((void*)0))
    err(1, "getmntopts");
   freemntopts(mp);
   break;
  case 'p':
   gdtm.dtm_allowprot = atoi(optarg);
   if ((gdtm.dtm_allowprot | VM_PROT_ALL) != VM_PROT_ALL)
    usage();
   break;
  case 'r':
   rtstr = optarg;
   break;
  case 's':
   detach = 0;
   break;
  case 't':
   pflags |= PUFFS_KFLAG_WTCACHE;
   break;
  default:
   usage();

  }
 }
 if (pflags & PUFFS_FLAG_OPDUMP)
  detach = 0;
 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 PUFFSOP_INIT(pops);

 PUFFSOP_SET(pops, dtfs, fs, statvfs);
 PUFFSOP_SET(pops, dtfs, fs, unmount);
 PUFFSOP_SETFSNOP(pops, sync);
 PUFFSOP_SET(pops, dtfs, fs, fhtonode);
 PUFFSOP_SET(pops, dtfs, fs, nodetofh);

 PUFFSOP_SET(pops, dtfs, node, lookup);
 PUFFSOP_SET(pops, dtfs, node, access);
 PUFFSOP_SET(pops, puffs_genfs, node, getattr);
 PUFFSOP_SET(pops, dtfs, node, setattr);
 PUFFSOP_SET(pops, dtfs, node, create);
 PUFFSOP_SET(pops, dtfs, node, remove);
 PUFFSOP_SET(pops, dtfs, node, readdir);
 PUFFSOP_SET(pops, dtfs, node, poll);
 PUFFSOP_SET(pops, dtfs, node, mmap);
 PUFFSOP_SET(pops, dtfs, node, mkdir);
 PUFFSOP_SET(pops, dtfs, node, rmdir);
 PUFFSOP_SET(pops, dtfs, node, rename);
 PUFFSOP_SET(pops, dtfs, node, read);
 PUFFSOP_SET(pops, dtfs, node, write);
 PUFFSOP_SET(pops, dtfs, node, link);
 PUFFSOP_SET(pops, dtfs, node, symlink);
 PUFFSOP_SET(pops, dtfs, node, readlink);
 PUFFSOP_SET(pops, dtfs, node, mknod);
 PUFFSOP_SET(pops, dtfs, node, inactive);
 PUFFSOP_SET(pops, dtfs, node, pathconf);
 PUFFSOP_SET(pops, dtfs, node, reclaim);

 srandom(time(((void*)0)));

 pu = puffs_init(pops, _PATH_PUFFS, typename, &gdtm, pflags);
 if (pu == ((void*)0))
  err(1, "init");
 gpu = pu;

 puffs_setfhsize(pu, sizeof(struct dtfs_fid),
     PUFFS_FHFLAG_NFSV2 | PUFFS_FHFLAG_NFSV3
     | (dynamicfh ? PUFFS_FHFLAG_DYNAMIC : 0));
 puffs_setncookiehash(pu, khashbuckets);

 if (signal(SIGALRM, wipe_the_sleep_out_of_my_eyes) == SIG_ERR)
  warn("cannot set alarm sighandler");


 if (dtfs_domount(pu, rtstr) != 0)
  errx(1, "dtfs_domount failed");

 po_root = puffs_getrootpathobj(pu);
 po_root->po_path = argv[0];
 po_root->po_len = strlen(argv[0]);


 ts.tv_sec = 1;
 ts.tv_nsec = 0;
 puffs_ml_setloopfn(pu, loopfun);
 puffs_ml_settimeout(pu, &ts);

 if (maxreqsize != MAXREQMAGIC)
  puffs_setmaxreqlen(pu, maxreqsize);

 puffs_set_errnotify(pu, puffs_kernerr_abort);
 if (detach)
  if (puffs_daemon(pu, 1, 1) == -1)
   err(1, "puffs_daemon");

 if (puffs_mount(pu, argv[1], mntflags, puffs_getroot(pu)) == -1)
  err(1, "mount");
 if (puffs_mainloop(pu) == -1)
  err(1, "mainloop");

 return 0;
}
