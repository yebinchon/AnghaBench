
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_fstypename; } ;
struct addrinfo {int dummy; } ;


 int MNT_FORCE ;
 int MNT_NONBUSY ;
 int NFSSVC_FORCEDISM ;
 int checkname (char*,char**) ;
 int checkvfsname (int ,char**) ;
 int err (int,char*,...) ;
 int errx (int,char*,char*,int ) ;
 int exit (int) ;
 int fflag ;
 int free (struct statfs*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,int *) ;
 int getfstab () ;
 int getopt (int,char**,char*) ;
 char** makevfslist (char*) ;
 int memset (struct addrinfo*,int ,int) ;
 int mntinfo (struct statfs**) ;
 char* nfshost ;
 int nfshost_ai ;
 int nfssvc (int ,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int setfsent () ;
 int setfstab (char*) ;
 int strcmp (int ,char*) ;
 int umountall (char**) ;
 int umountfs (struct statfs*) ;
 int unmount (char*,int) ;
 int usage () ;
 int vflag ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int all, errs, ch, mntsize, error, nfsforce, ret;
 char **typelist = ((void*)0);
 struct statfs *mntbuf, *sfs;
 struct addrinfo hints;

 nfsforce = all = errs = 0;
 while ((ch = getopt(argc, argv, "AaF:fh:Nnt:v")) != -1)
  switch (ch) {
  case 'A':
   all = 2;
   break;
  case 'a':
   all = 1;
   break;
  case 'F':
   setfstab(optarg);
   break;
  case 'f':
   fflag |= MNT_FORCE;
   break;
  case 'h':
   all = 2;
   nfshost = optarg;
   break;
  case 'N':
   nfsforce = 1;
   break;
  case 'n':
   fflag |= MNT_NONBUSY;
   break;
  case 't':
   if (typelist != ((void*)0))
    err(1, "only one -t option may be specified");
   typelist = makevfslist(optarg);
   break;
  case 'v':
   vflag = 1;
   break;
  default:
   usage();

  }
 argc -= optind;
 argv += optind;

 if ((fflag & MNT_FORCE) != 0 && (fflag & MNT_NONBUSY) != 0)
  err(1, "-f and -n are mutually exclusive");

 if ((argc == 0 && !all) || (argc != 0 && all))
  usage();

 if (nfsforce != 0 && (argc == 0 || nfshost != ((void*)0) || typelist != ((void*)0)))
  usage();


 if ((nfshost != ((void*)0)) && (typelist == ((void*)0)))
  typelist = makevfslist("nfs");

 if (nfshost != ((void*)0)) {
  memset(&hints, 0, sizeof hints);
  error = getaddrinfo(nfshost, ((void*)0), &hints, &nfshost_ai);
  if (error)
   errx(1, "%s: %s", nfshost, gai_strerror(error));
 }

 switch (all) {
 case 2:
  if ((mntsize = mntinfo(&mntbuf)) <= 0)
   break;




  for (errs = 0, mntsize--; mntsize > 0; mntsize--) {
   sfs = &mntbuf[mntsize];
   if (checkvfsname(sfs->f_fstypename, typelist))
    continue;
   if (strcmp(sfs->f_mntonname, "/dev") == 0)
    continue;
   if (umountfs(sfs) != 0)
    errs = 1;
  }
  free(mntbuf);
  break;
 case 1:
  if (setfsent() == 0)
   err(1, "%s", getfstab());
  errs = umountall(typelist);
  break;
 case 0:
  for (errs = 0; *argv != ((void*)0); ++argv)
   if (nfsforce != 0) {





    ret = nfssvc(NFSSVC_FORCEDISM, *argv);
    if (ret >= 0)
     ret = unmount(*argv, MNT_FORCE);
    if (ret < 0) {
     warn("%s", *argv);
     errs = 1;
    }
   } else if (checkname(*argv, typelist) != 0)
    errs = 1;
  break;
 }
 exit(errs);
}
