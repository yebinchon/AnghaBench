
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct quotafile {int dummy; } ;
struct passwd {int pw_name; scalar_t__ pw_uid; } ;
struct group {int gr_name; scalar_t__ gr_gid; } ;
struct fstab {int fs_spec; int fs_file; } ;


 char* FSTAB ;
 int GRPQUOTA ;
 int O_CREAT ;
 int O_RDWR ;
 int USRQUOTA ;
 int addid (int ,int ,int ,int *) ;
 scalar_t__ aflag ;
 int atoi (int ) ;
 char* blockcheck (int ) ;
 int cflag ;
 int checkfstab (scalar_t__,scalar_t__) ;
 scalar_t__ chkquota (char*,struct quotafile*,struct quotafile*) ;
 int endfsent () ;
 int endgrent () ;
 int endpwent () ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 struct fstab* getfsent () ;
 struct group* getgrent () ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwent () ;
 scalar_t__ gflag ;
 int oneof (int ,char**,int) ;
 int optarg ;
 scalar_t__ optind ;
 int quota_close (struct quotafile*) ;
 struct quotafile* quota_open (struct fstab*,int ,int) ;
 scalar_t__ setfsent () ;
 int setgrent () ;
 int setpwent () ;
 int stderr ;
 scalar_t__ uflag ;
 int usage () ;
 int vflag ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 struct fstab *fs;
 struct passwd *pw;
 struct group *gr;
 struct quotafile *qfu, *qfg;
 int i, argnum, maxrun, errs, ch;
 long done = 0;
 char *name;

 errs = maxrun = 0;
 while ((ch = getopt(argc, argv, "ac:guvl:")) != -1) {
  switch(ch) {
  case 'a':
   aflag++;
   break;
  case 'c':
   if (cflag)
    usage();
   cflag = atoi(optarg);
   break;
  case 'g':
   gflag++;
   break;
  case 'u':
   uflag++;
   break;
  case 'v':
   vflag++;
   break;
  case 'l':
   maxrun = atoi(optarg);
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if ((argc == 0 && !aflag) || (argc > 0 && aflag))
  usage();
 if (cflag && cflag != 32 && cflag != 64)
  usage();
 if (!gflag && !uflag) {
  gflag++;
  uflag++;
 }
 if (gflag) {
  setgrent();
  while ((gr = getgrent()) != ((void*)0))
   (void) addid((u_long)gr->gr_gid, GRPQUOTA, gr->gr_name,
       ((void*)0));
  endgrent();
 }
 if (uflag) {
  setpwent();
  while ((pw = getpwent()) != ((void*)0))
   (void) addid((u_long)pw->pw_uid, USRQUOTA, pw->pw_name,
       ((void*)0));
  endpwent();
 }



 if (maxrun > 0)
  warnx("the -l option is now deprecated");
 if (aflag)
  exit(checkfstab(uflag, gflag));
 if (setfsent() == 0)
  errx(1, "%s: can't open", FSTAB);
 while ((fs = getfsent()) != ((void*)0)) {
  if (((argnum = oneof(fs->fs_file, argv, argc)) >= 0 ||
       (argnum = oneof(fs->fs_spec, argv, argc)) >= 0) &&
      (name = blockcheck(fs->fs_spec))) {
   done |= 1 << argnum;
   qfu = ((void*)0);
   if (uflag)
    qfu = quota_open(fs, USRQUOTA, O_CREAT|O_RDWR);
   qfg = ((void*)0);
   if (gflag)
    qfg = quota_open(fs, GRPQUOTA, O_CREAT|O_RDWR);
   if (qfu == ((void*)0) && qfg == ((void*)0))
    continue;
   errs += chkquota(name, qfu, qfg);
   if (qfu)
    quota_close(qfu);
   if (qfg)
    quota_close(qfg);
  }
 }
 endfsent();
 for (i = 0; i < argc; i++)
  if ((done & (1 << i)) == 0)
   fprintf(stderr, "%s not found in %s\n",
    argv[i], FSTAB);
 exit(errs);
}
