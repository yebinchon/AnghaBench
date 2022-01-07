
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {char* fs_mntops; char* fs_spec; int fs_type; } ;


 int Eflag ;
 int FSTAB_SW ;
 scalar_t__ SWAPCTL ;
 scalar_t__ SWAPOFF ;
 scalar_t__ SWAPON ;
 int exit (int) ;
 struct fstab* getfsent () ;
 int getopt (int,char**,char*) ;
 char* getprogname () ;
 char* optarg ;
 int optind ;
 scalar_t__ orig_prog ;
 int printf (char*,char*,char*,char const*) ;
 scalar_t__ qflag ;
 int setfstab (char const*) ;
 scalar_t__ strcmp (int ,int ) ;
 char* strrchr (char*,char) ;
 int * strstr (char*,char*) ;
 char* swap_on_off (char*,int,char*) ;
 int swaplist (int,int,int) ;
 int usage () ;
 scalar_t__ which_prog ;

int
main(int argc, char **argv)
{
 struct fstab *fsp;
 const char *swfile;
 char *ptr;
 int ret, ch, doall;
 int sflag, lflag, late, hflag;
 const char *etc_fstab;

 sflag = lflag = late = hflag = 0;
 if ((ptr = strrchr(argv[0], '/')) == ((void*)0))
  ptr = argv[0];
 if (strstr(ptr, "swapon") != ((void*)0))
  which_prog = SWAPON;
 else if (strstr(ptr, "swapoff") != ((void*)0))
  which_prog = SWAPOFF;
 orig_prog = which_prog;

 doall = 0;
 etc_fstab = ((void*)0);
 while ((ch = getopt(argc, argv, "AadEghklLmqsUF:")) != -1) {
  switch(ch) {
  case 'A':
   if (which_prog == SWAPCTL) {
    doall = 1;
    which_prog = SWAPON;
   } else
    usage();
   break;
  case 'a':
   if (which_prog == SWAPON || which_prog == SWAPOFF)
    doall = 1;
   else
    which_prog = SWAPON;
   break;
  case 'd':
   if (which_prog == SWAPCTL)
    which_prog = SWAPOFF;
   else
    usage();
   break;
  case 'E':
   if (which_prog == SWAPON)
    Eflag = 2;
   else
    usage();
   break;
  case 'g':
   hflag = 'G';
   break;
  case 'h':
   hflag = 'H';
   break;
  case 'k':
   hflag = 'K';
   break;
  case 'l':
   lflag = 1;
   break;
  case 'L':
   late = 1;
   break;
  case 'm':
   hflag = 'M';
   break;
  case 'q':
   if (which_prog == SWAPON || which_prog == SWAPOFF)
    qflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'U':
   if (which_prog == SWAPCTL) {
    doall = 1;
    which_prog = SWAPOFF;
   } else
    usage();
   break;
  case 'F':
   etc_fstab = optarg;
   break;
  case '?':
  default:
   usage();
  }
 }
 argv += optind;

 ret = 0;
 swfile = ((void*)0);
 if (etc_fstab != ((void*)0))
  setfstab(etc_fstab);
 if (which_prog == SWAPON || which_prog == SWAPOFF) {
  if (doall) {
   while ((fsp = getfsent()) != ((void*)0)) {
    if (strcmp(fsp->fs_type, FSTAB_SW) != 0)
     continue;
    if (strstr(fsp->fs_mntops, "noauto") != ((void*)0))
     continue;
    if (which_prog != SWAPOFF &&
        strstr(fsp->fs_mntops, "late") &&
        late == 0)
     continue;
    if (which_prog == SWAPOFF &&
        strstr(fsp->fs_mntops, "late") == ((void*)0) &&
        late != 0)
     continue;
    Eflag |= (strstr(fsp->fs_mntops, "trimonce") != ((void*)0));
    swfile = swap_on_off(fsp->fs_spec, 1,
        fsp->fs_mntops);
    Eflag &= ~1;
    if (swfile == ((void*)0)) {
     ret = 1;
     continue;
    }
    if (qflag == 0) {
     printf("%s: %sing %s as swap device\n",
         getprogname(),
         (which_prog == SWAPOFF) ?
         "remov" : "add", swfile);
    }
   }
  } else if (*argv == ((void*)0))
   usage();
  for (; *argv; ++argv) {
   swfile = swap_on_off(*argv, 0, ((void*)0));
   if (swfile == ((void*)0)) {
    ret = 1;
    continue;
   }
   if (orig_prog == SWAPCTL) {
    printf("%s: %sing %s as swap device\n",
        getprogname(),
        (which_prog == SWAPOFF) ? "remov" : "add",
        swfile);
   }
  }
 } else {
  if (lflag || sflag)
   swaplist(lflag, sflag, hflag);
  else
   usage();
 }
 exit(ret);
}
